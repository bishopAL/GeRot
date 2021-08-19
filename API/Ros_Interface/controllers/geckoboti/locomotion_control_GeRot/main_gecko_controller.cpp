//*******************************************
//*                                         *
//*    main geckobot (GeRot) controller     *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong
// contract: zumoarthicha@gmail.com 
// update: 30/12/2019
// version: 1.0.0

// standard ros library
#include <ros/ros.h>
#include "std_msgs/Bool.h"
#include "std_msgs/Float32.h"
#include <std_msgs/Int32.h>
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Float32MultiArray.h"
#include <rosgraph_msgs/Clock.h>
#include <cmath>
#include <iostream>

// modular robot controller library
#include "ModularNeuralControl.h"

#define RATE 10 // reflesh rate of ros


void positionCB(const std_msgs::Float32MultiArray::ConstPtr& array);
void irCB(const std_msgs::Float32MultiArray::ConstPtr& array);
void imuCB(const std_msgs::Float32MultiArray::ConstPtr& array);


// buffer (array of float) to store signal before publish to ros
std_msgs::Float32MultiArray cpgSignal;
std_msgs::Float32MultiArray motorSignal;
std_msgs::Float32MultiArray pcpgSignal;
std_msgs::Float32MultiArray realMotorSignal;
std_msgs::Float32MultiArray csvArray;

// modular neural control object
ModularNeuralControl mnc;

// global variable
float motorSig[12] = {0}; // array store motor signal
float cpg[2] = {0.0,0.0};
float pcpg[2] = {0.0,0.0};

float robotPosition[3] = {0.0,0.0,0.0};
float irDist[2] = {0.0,0.0};
float imuAngle[3] = {0.0,0.0,0.0};


int main(int argc, char *argv[]){
    //**********************  set up ROS  **********************//
    // create ros node
    std::string nodeName("geckoNode_GeRot");
    ros::init(argc,argv,nodeName);

    // check robot operating system
    if(!ros::master::check())
        ROS_ERROR("ros::master::check() did not pass!");
    ros::NodeHandle node("~");
    
    
    ROS_INFO("simROS just started!");

    // set reflesh rate
    ros::Rate* rate;
    rate = new ros::Rate(RATE);
    ros::Rate loop_rate(RATE);

    // create publisher and subscriber
    ros::Publisher outputCPG;
    outputCPG = node.advertise<std_msgs::Float32MultiArray>("/CPGOutput",1);

    ros::Publisher outputPCPG;
    outputPCPG = node.advertise<std_msgs::Float32MultiArray>("/PCPGOutput",1);

    ros::Publisher outputMOTOR;
    outputMOTOR = node.advertise<std_msgs::Float32MultiArray>("/MOTOROutput",1);

    ros::Publisher outputREALMOTOR;
    outputREALMOTOR = node.advertise<std_msgs::Float32MultiArray>("/multi_joint_command",1);

    ros::Publisher outputCSV;
    outputCSV = node.advertise<std_msgs::Float32MultiArray>("/csv_topic",1);

    ros::Subscriber positionSub = node.subscribe("/position_topic",10,positionCB);
    ros::Subscriber irSub = node.subscribe("/ir_topic",10,irCB);
    ros::Subscriber imuSub = node.subscribe("/imu_topic",10,imuCB);
    
    //**********************  set up ROS  **********************//

    long cnt = 0;
    float psnInput = 1.0;

    /*
    input definition
    i0 => manual cpg input, frequency, gait (range : 0.03-0.10 MI))
    i1 => MI, cpg input, frequency, gait (range: 0-90 degree)
    i2 => manual left (forward motion)
    i3 => ir left
    i4 => ir right
    i5 => manual right (forward motion)
    i6 => manual left (sideways motion)
    i7 => manual right (sideways motion)
    i8 => lift
    */


    mnc.setInputNeuronInput(0, 0.0); // manual gait
    mnc.setInputNeuronInput(3, 0.0); // ir left
    mnc.setInputNeuronInput(4, 0.0); // ir right
    mnc.setInputNeuronInput(8, 1.0); // lift

    while(ros::ok())
    {
        //*******************  modular neural control  *******************//
        mnc.step();
        /*cnt += 1;

        if (cnt > 200)
        {
            mnc.setInputNeuronInput(1, 90.0);
        }else{
            mnc.setInputNeuronInput(1, 900.0);
        }
        if (cnt >= 400)
        {
            cnt = 0;
        }*/


        // obstacle avoidance
        mnc.setInputNeuronInput(3, irDist[0]); // ir1
        mnc.setInputNeuronInput(4, irDist[1]); // ir2
        mnc.setInputNeuronInput(1, 0.0*imuAngle[1]); // imu_pitch

        // forward
        //mnc.setInputNeuronInput(3, 0.0); // ir1
        //mnc.setInputNeuronInput(4, 0.0); // ir2
        // sidewat
        //mnc.setInputNeuronInput(3, 1.0); // ir1
        //mnc.setInputNeuronInput(4, 0.0); // ir2
        


        for(int i=0;i<2;i++)
        {
            cpg[i] = mnc.getCpgOutput(i);
            pcpg[i] = mnc.getPmnOutput(i+1);
        }


        for(int i=0;i<4;i++)
        {
            for(int j=0;j<3;j++)
            {
                motorSig[int((i*3)+j)] = mnc.getMotorOutput(j,i);
            }
        }

        
        //*******************  modular neural control  *******************//

        //*********************  publish ROS topic  **********************//
        // create package for vrep ros interface

        // clear buffers
        cpgSignal.data.clear();
        pcpgSignal.data.clear();
        motorSignal.data.clear();
        realMotorSignal.data.clear();
        csvArray.data.clear();

        // append data in the buffers
        for(int i=0;i<2;i++)
        {
            //cpgSignal.data.push_back(cpg[i]);
            //pcpgSignal.data.push_back(mnc.getDLOutput(0+2*i));
            csvArray.data.push_back(cpg[i]);
            csvArray.data.push_back(pcpg[i]);
        }
        //printf("%f",cpg[0]);
        cpgSignal.data.push_back(mnc.getPpnOutput(4));
        cpgSignal.data.push_back(mnc.getPpnOutput(5));
        pcpgSignal.data.push_back(mnc.getPpnOutput(8));
        pcpgSignal.data.push_back(mnc.getPpnOutput(11));

        for(int j=0;j<12;j++)
        {
            motorSignal.data.push_back(motorSig[j]);
            csvArray.data.push_back(motorSig[j]);
        }

        csvArray.data.push_back(irDist[0]);
        csvArray.data.push_back(irDist[1]);
        csvArray.data.push_back(imuAngle[0]);
        csvArray.data.push_back(imuAngle[1]);
        csvArray.data.push_back(imuAngle[2]);

        for(int j=0;j<14;j++)
        {
            csvArray.data.push_back(mnc.getPpnOutput(j));
        }
        

        realMotorSignal.data.push_back(0);realMotorSignal.data.push_back(-1.0*motorSig[3]);
        realMotorSignal.data.push_back(1);realMotorSignal.data.push_back(motorSig[4]);
        realMotorSignal.data.push_back(2);realMotorSignal.data.push_back(-1.0*motorSig[5]);
        realMotorSignal.data.push_back(3);realMotorSignal.data.push_back(motorSig[0]);
        realMotorSignal.data.push_back(4);realMotorSignal.data.push_back(motorSig[1]);
        realMotorSignal.data.push_back(5);realMotorSignal.data.push_back(-1.0*motorSig[2]);
        realMotorSignal.data.push_back(6);realMotorSignal.data.push_back(motorSig[9]);
        realMotorSignal.data.push_back(7);realMotorSignal.data.push_back(-1.0*motorSig[10]);
        realMotorSignal.data.push_back(8);realMotorSignal.data.push_back(motorSig[11]);
        realMotorSignal.data.push_back(9);realMotorSignal.data.push_back(-1.0*motorSig[6]);
        realMotorSignal.data.push_back(10);realMotorSignal.data.push_back(-1.0*motorSig[7]);
        realMotorSignal.data.push_back(11);realMotorSignal.data.push_back(motorSig[8]);

        // publish the buffers
        outputCPG.publish(cpgSignal);
        outputPCPG.publish(pcpgSignal);
        outputMOTOR.publish(motorSignal);
        outputREALMOTOR.publish(realMotorSignal);
        outputCSV.publish(csvArray);

        //*********************  publish ROS topic  **********************//


        //************************  set up ROS  *************************//
        // wait
        ros::spinOnce();
        loop_rate.sleep();

        //************************  set up ROS  *************************//

        



    } // main loop -> ros::ok
    return 0;
}





void positionCB(const std_msgs::Float32MultiArray::ConstPtr& array)
{
    int i = 0;
    // print all the remaining numbers
    for(std::vector<float>::const_iterator it = array->data.begin(); it != array->data.end(); ++it)
    {
        robotPosition[i] = *it;

        i++;
    }
    return;
}

void irCB(const std_msgs::Float32MultiArray::ConstPtr& array)
{
    int i = 0;
    // print all the remaining numbers
    for(std::vector<float>::const_iterator it = array->data.begin(); it != array->data.end(); ++it)
    {
        irDist[i] = *it;

        i++;
    }
    return;
}

void imuCB(const std_msgs::Float32MultiArray::ConstPtr& array)
{
    int i = 0;
    // print all the remaining numbers
    for(std::vector<float>::const_iterator it = array->data.begin(); it != array->data.end(); ++it)
    {
        imuAngle[i] = *it;

        i++;
    }
    return;
}