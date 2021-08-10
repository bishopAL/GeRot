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
    int setID(vector<int> ids);
    void setPort(string port);
    void setBaudRate(int baudRate);
    void connectToMotors();
    // void setOperationMode(string);
    DxlAPI();
    ~DxlAPI();
    vector<int> ID;
    int BAUDRATE;
    string DEVICENAME;
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
    dynamixel::PortHandler *portHandler;
    dynamixel::PacketHandler *packetHandler;
// Initialize GroupSyncWrite
    dynamixel::GroupSyncWrite groupSyncWriteCurrent(dynamixel::PortHandler *portHandler, dynamixel::PacketHandler *packetHandler, int ADDR_PRO_GOAL_CURRENT, int ADDR_PRO_GOAL_CURRENT_LENGTH);
    /*
    dynamixel::GroupSyncWrite groupSyncWritePosition(portHandler, packetHandler, ADDR_PRO_GOAL_POSITION, ADDR_PRO_GOAL_POSITION_LENGTH);
    dynamixel::GroupSyncWrite groupSyncWriteVelocity(portHandler, packetHandler, ADDR_PRO_GOAL_VELOCITY, ADDR_PRO_GOAL_VELOCITY_LENGTH);
    dynamixel::GroupSyncWrite groupSyncWriteProfileVelocity(portHandler, packetHandler, ADDR_PRO_PROFILE_VELOCITY, ADDR_PRO_PROFILE_VELOCITY_LENGTH);
    dynamixel::GroupSyncWrite groupSyncWriteProfileAcceleration(portHandler, packetHandler, ADDR_PRO_PROFILE_ACCELERATION, ADDR_PRO_PROFILE_ACCELERATION_LENGTH);
    dynamixel::GroupSyncWrite groupSyncWriteTorqueEnable(portHandler, packetHandler, ADDR_PRO_TORQUE_ENABLE, ADDR_PRO_TORQUE_ENABLE_LENGTH);
// Initialize GroupSyncRead
    dynamixel::GroupSyncRead groupSyncReadPosition(portHandler, packetHandler, ADDR_PRO_PRESENT_POSITION, ADDR_PRO_PRESENT_POSITION_LENGTH);
    dynamixel::GroupSyncRead groupSyncReadVelocity(portHandler, packetHandler, ADDR_PRO_PRESENT_VELOCITY, ADDR_PRO_PRESENT_VELOCITY_LENGTH);
    dynamixel::GroupSyncRead groupSyncReadProfileVelocity(portHandler, packetHandler, ADDR_PRO_PROFILE_VELOCITY, ADDR_PRO_PROFILE_VELOCITY_LENGTH);
    dynamixel::GroupSyncRead groupSyncReadProfileAcceleration(portHandler, packetHandler, ADDR_PRO_PROFILE_ACCELERATION, ADDR_PRO_PROFILE_ACCELERATION_LENGTH);
    dynamixel::GroupSyncRead groupSyncReadCurrent(portHandler, packetHandler, ADDR_PRO_PRESENT_CURRENT, ADDR_PRO_PRESENT_CURRENT_LENGTH);
*/
};