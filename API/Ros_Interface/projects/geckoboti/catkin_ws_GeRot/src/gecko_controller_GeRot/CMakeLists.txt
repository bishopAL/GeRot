cmake_minimum_required(VERSION 2.8.3)
project(main_gecko_controller_GeRot)

set (CMAKE_CXX_STANDARD 11)

SET (GOROBOTS "../../../../..")
SET (CONTROLLER "${GOROBOTS}/controllers")
SET (UTILS "${GOROBOTS}/utils")
SET (REAL_ROBOT "${UTILS}/real_robots/geckoboti/")

find_package(catkin REQUIRED)
find_package(catkin REQUIRED COMPONENTS std_msgs geometry_msgs roscpp )


include_directories("${catkin_INCLUDE_DIRS}"
        "${GOROBOTS}"
        "${UTILS}")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

add_executable(
        gecko_controller
	${UTILS}/ann-framework/ann
	${UTILS}/ann-framework/neuron 
	${UTILS}/ann-framework/synapse
	${UTILS}/ann-framework/transferfunction
	${UTILS}/interpolator2d 
	${UTILS}/ann-library/so2cpg 
	${CONTROLLER}/geckoboti/locomotion_control_GeRot/pcpg 
	${CONTROLLER}/geckoboti/locomotion_control_GeRot/rbf
	${UTILS}/ann-library/psn
	${UTILS}/ann-library/pmn 
	${UTILS}/ann-library/vrn 
	${UTILS}/ann-library/extendedso2cpg 
	${UTILS}/ann-library/adaptiveso2cpgsynplas
	${CONTROLLER}/geckoboti/locomotion_control_GeRot/main_gecko_controller
	${CONTROLLER}/geckoboti/locomotion_control_GeRot/Delay_line
	${CONTROLLER}/geckoboti/locomotion_control_GeRot/ModularNeuralControl)


target_link_libraries(gecko_controller ${catkin_LIBRARIES})
add_dependencies(gecko_controller ${catkin_EXPORTED_TARGETS})
