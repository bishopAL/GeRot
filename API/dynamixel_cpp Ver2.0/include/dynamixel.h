/**
 * @file dynamixel.h
 * @author Bingcheng Wang(bishop-222@nuaa.edu.cn)
 * @brief Dynamixel motors C++ API
 * @version 2.0
 * @date 2022-07-11
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <vector>
#include <cmath>
#include <iostream>
#include <iomanip>
#include "dynamixel_sdk.h"                                  // Uses Dynamixel SDK library
using namespace std;
/*
DXL_ID = dxl_id
BAUDRATE = baudrate
DEVICENAME = port_name
PROTOCOL_VERSION = 2.0

*/

class DxlAPI
{
public:
    DxlAPI(char *port, int baudrate_set, vector<int> ids, uint8_t type);
    ~DxlAPI();
    void setOperatingMode(uint8_t mode); //3 position control; 0 current control
    void torqueEnable();
    void torqueDisable();
    void setPosition(vector<float> posVector);
    void setTorque(vector<float> torVector);
    void getPosition();
    void getVelocity();
    void getTorque();
    int torque2current(float tor);
    float current2torque(int current);
    vector<int> ID;
    int BAUDRATE;
    uint8_t MOTOR_TYPE;  // 0: XM430; 1: XL330; 2: XC330; 3: XH540
    uint8_t MOTOR_NUM;
    char *PORT_NAME;
    int ADDR_OPERATING_MODE;
    int ADDR_OPERATING_MODE_LENGTH;
    int ADDR_PRO_TORQUE_ENABLE;
    int ADDR_PRO_TORQUE_ENABLE_LENGTH;
    int ADDR_PRO_GOAL_POSITION;
    int ADDR_PRO_GOAL_POSITION_LENGTH;
    int ADDR_PRO_PRESENT_POSITION;
    int ADDR_PRO_PRESENT_POSITION_LENGTH;
    int ADDR_PRO_GOAL_CURRENT;
    int ADDR_PRO_GOAL_CURRENT_LENGTH;
    int ADDR_PRO_PROFILE_VELOCITY;
    int ADDR_PRO_PROFILE_VELOCITY_LENGTH;
    int ADDR_PRO_PROFILE_ACCELERATION;
    int ADDR_PRO_PROFILE_ACCELERATION_LENGTH;
    int ADDR_PRO_PRESENT_CURRENT;
    int ADDR_PRO_PRESENT_CURRENT_LENGTH;
    int ADDR_PRO_PRESENT_VELOCITY;
    int ADDR_PRO_PRESENT_VELOCITY_LENGTH;
    int ADDR_PRO_GOAL_VELOCITY;
    int ADDR_PRO_GOAL_VELOCITY_LENGTH;
    vector<float> present_position;
    vector<float> present_torque;
    vector<float> present_velocity;
    // current-torque relationship X: torque Y: current
    // XM430: X>0: Y = 1.2 * (X/2.69) + 0.006; X<0: Y = 1.2 * (X/2.69) - 0.006
    // XL330: not good
    // XC330: X>0: Y = 2.096 * X + 0.025; X<0: Y = 2.096 * X - 0.025
    // XH540: wait for measurement
    float K_torque2current[4] = {1.2/2.69,1,2.096,1};
    float B_torque2current[4] = {0.006,0,0.040,0};
    dynamixel::PortHandler *portHandler;
    dynamixel::PacketHandler *packetHandler;
};