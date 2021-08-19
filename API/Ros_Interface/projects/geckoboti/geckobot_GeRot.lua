--*******************************************
--*                                         *
--*             vrep program                *
--*                                         *
--*******************************************
-- author: Arthicha Srisuchinnawong,
-- contract: zumoarthicha@gmail.com, 
-- update: 31/12/2019
-- version: 1.0.0

-- DO NOT WRITE CODE OUTSIDE OF THE if-then-end SECTIONS BELOW!! (unless the code is a function definition)

function addforce(handle,efference,dist,force_gain)

    -- description:
    --
    -- add force "addedForce" newton to foot handle "handle" when "efference" signal
    -- is zero and "dist"ance between foot and surface is lower than "geckoTape_dist". This function
    -- has no output.
    geckoTape_dist = 0.005 -- maximum distance for enable adhesive force 
	epsilon = 0.001 -- very small value
	ADHESIVE_FORCE = 4 -- force (N)

    if (dist <= geckoTape_dist) and (efference <= epsilon) then
        sim.addForce(handle,{0,0,0},{0,0,-force_gain*ADHESIVE_FORCE})
    end
end

function graph_cpg_cb(msg)
    data = msg.data
    
    cpgSignal[1] = data[1]
    cpgSignal[2] = data[2]
    --print(cpgSignal)
    
end

function graph_pcpg_cb(msg)
    data = msg.data
    
    pcpgSignal[1] = data[1]
    pcpgSignal[2] = data[2]
    --print(pcpgSignal)

end

function motor_cb(msg)
    data = msg.data

    for i=1,12,1 do
        motorSignal[i] = data[i]
    end
end



-- initialize section
function sysCall_init()


	-- ************************ initilize variable  ***************************

    cpgSignal = {0,0}
    pcpgSignal = {0,0,0,0}
    motorSignal = {0,0,0,0,0,0,0,0,0,0,0,0}

    positionTopic = {}
    irTopic = {}

    -- handle 
    legName = {'rh','rf','lh','lf'}
    jointHandle = {{0,0,0},{0,0,0},{0,0,0},{0,0,0}}
    footHandle = {0,0,0,0}
    forceHandle = {0,0,0,0}
    sensor_handle = {0,0}
    distance = {0,0,0,0} -- distance between foot and the surface
    ir = {0,0}

    -- ************************ initilize variable  ***************************

    -- *********************** create object handle  **************************

    -- Create all handles
    geckoHandle=sim.getObjectAssociatedWithScript(sim.handle_self)

    for i=1,4,1 do
        for j=1,3,1 do

            jointHandle[i][j] = simGetObjectHandle('joint_'..legName[i]..tostring(j-1))
        end
        footHandle[i] = simGetObjectHandle('pad_'..legName[i])
        forceHandle[i] = simGetObjectHandle('ankle_'..legName[i])
    end
    body = simGetObjectHandle('body')
    floor = simGetObjectHandle('floor')

    for i=1,2,1 do
    	sensor_handle[i] = simGetObjectHandle('ir'..tostring(i))
    end

    -- get graph handle
    cpg_graph = simGetObjectHandle('CPG')
    joint_graph = simGetObjectHandle('JOINT_SIGNAL')

    -- *********************** create object handle  **************************

    -- ******************** set up vrep ros interface  ************************
    -- Check if the required ROS plugin is loaded
    moduleName=0
    moduleVersion=0
    index=0
    pluginNotFound=true
    while moduleName do
        moduleName,moduleVersion=sim.getModuleName(index)
        if (moduleName=='RosInterface') then
            pluginNotFound=false
        end
        index=index+1
    end
    if (pluginNotFound) then
        sim.displayDialog('Error','The RosInterface was not found.',sim.dlgstyle_ok,false,nil,{0.8,0,0,0,0,0},{0.5,0,0,1,1,1})
    end

    -- ******************** set up vrep ros interface  ************************


    -- ***************** create publishers and subscribers  *******************
    -- If found then start the subscribers and publishers
    if (not pluginNotFound) then
        local CPGOutputName='/CPGOutput'
        local PCPGOutputName='/PCPGOutput'
        local MOTOROutputName='/MOTOROutput'


        -- Create the subscribers
        
        PCPGOutputSub=simROS.subscribe(PCPGOutputName,'std_msgs/Float32MultiArray', 'graph_pcpg_cb')
        --VRNOutputSub=simROS.subscribe(VRNOutputName,'std_msgs/Float32MultiArray', 'graph_vrn_cb')
        MOTOROutputSub=simROS.subscribe(MOTOROutputName,'std_msgs/Float32MultiArray', 'motor_cb')
        
        CPGOutputSub=simROS.subscribe(CPGOutputName,'std_msgs/Float32MultiArray', 'graph_cpg_cb')

        -- Create the publishers

        positionPublisher = simROS.advertise('/position_topic','std_msgs/Float32MultiArray')-- simulated position topic
        irPublisher = simROS.advertise('/ir_topic','std_msgs/Float32MultiArray')-- simulated ir topic

        
        
        -- Start the client application (c++ node)

        result=sim.launchExecutable(simGetStringParameter(sim_stringparam_scene_path) .. '/../../../projects/geckoboti/catkin_ws_GeRot/src/gecko_controller_GeRot/bin/gecko_controller',
            CPGOutputName.." "..PCPGOutputName.." "..MOTOROutputName ,0)
        
        if (result==false) then
            sim.displayDialog('Error','External ROS-Node not found',sim.dlgstyle_ok,false,nil,{0.8,0,0,0,0,0},{0.5,0,0,1,1,1})
        end
    end

    -- ***************** create publishers and subscribers  *******************
end


--[[
Actuation: This part will be executed in each simulation step
--]]
function sysCall_actuation()

	t = sim.getSimulationTime()
	-- ****************** get robot position  ********************

	body_posi = simGetObjectPosition(body,floor)
	body_posi[1] = -1.0*body_posi[1]
	body_posi[2] = -1.0*body_posi[2]
	positionTopic['data'] = body_posi
	--print(body_posi)
	
	for i=1,2,1 do
		detect, irDist = simReadProximitySensor(sensor_handle[i])
		if (detect == 1) then
			ir[i] = 0.2-irDist
		else
			ir[i] = 0.0
		end
	end

	irTopic['data'] = ir
	
	--pcpgSignal[2] = 1000*posPad[2]

	-- ****************** get robot position  ********************

	-- ***************** send command to joint  *******************

	for i=1,4,1 do
        for j=1,3,1 do
        	if (t>4) then
            	sim.setJointTargetPosition(jointHandle[i][j],motorSignal[((i-1)*3)+j])
        	end
        end
        res,dist = simCheckDistance(floor,footHandle[i],0)
    	distance[i] = math.abs(dist[3]-dist[6])
        
    	-- add force at the foot pad by considering motorSignal and distance
    	addforce(footHandle[i],motorSignal[((i-1)*3)+1],distance[i],1.0)
    end

    -- ***************** send command to joint  *******************

    -- ************************** plot  ***************************

    for i=1,4,1 do
        for j=1,3,1 do
        	if j <= 3 then
            	simSetGraphUserData(joint_graph,legName[i]..'j'..tostring(j-1),motorSignal[((i-1)*3)+j])
            end
        end
    end
        
    for i=1,2,1 do
    	simSetGraphUserData(cpg_graph,"joint"..tostring(i-1),cpgSignal[i])
    	simSetGraphUserData(cpg_graph,"pcpg"..tostring(i-1),pcpgSignal[i])
    end


    -- ***************** send command to joint  *******************
    
    -- ******************* ROS: publish topic*  *******************

    simROS.publish(positionPublisher,positionTopic)
    simROS.publish(irPublisher,irTopic)

    -- ******************* ROS: publish topic*  *******************
end

