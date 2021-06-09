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
ADDR_OPERATING_MODE = 11  # 1 Byte
ADDR_OPERATING_MODE_LENGTH = 1  # 1 Byte
ADDR_PRO_TORQUE_ENABLE = 64  # Control table address is different in Dynamixel model   # 1 Byte
ADDR_PRO_TORQUE_ENABLE_LENGTH = 1
ADDR_PRO_GOAL_POSITION = 116  # 4 Bytes
ADDR_PRO_GOAL_POSITION_LENGTH = 4
ADDR_PRO_PRESENT_POSITION = 132  # 4 Bytes
ADDR_PRO_PRESENT_POSITION_LENGTH = 4
ADDR_PRO_GOAL_CURRENT = 102  # 2 Bytes
ADDR_PRO_GOAL_CURRENT_LENGTH = 2
ADDR_PRO_PROFILE_VELOCITY = 112  # 4 Bytes
ADDR_PRO_PROFILE_VELOCITY_LENGTH = 4
ADDR_PRO_PROFILE_ACCELERATION = 108  # 4 Bytes
ADDR_PRO_PROFILE_ACCELERATION_LENGTH = 4
ADDR_PRO_PRESENT_CURRENT = 126  # 2 Bytes
ADDR_PRO_PRESENT_CURRENT_LENGTH = 2
ADDR_PRO_PRESENT_VELOCITY = 128  # 4 Bytes
ADDR_PRO_PRESENT_VELOCITY_LENGTH = 4
ADDR_PRO_GOAL_VELOCITY = 104  # 4 Bytes
ADDR_PRO_GOAL_VELOCITY_LENGTH = 4
*/

class DxlAPI
{
    void setID(int id[]);
    void setPort(string port);
    void setBaudRate(int baudRate);
    void connectToMotors();
    // void setOperationMode(string);
    DxlAPI();
    ~DxlAPI();
    vector<int> ID;
    int BAUDRATE;
    string DEVICENAME;
    // dynamixel::PortHandler *portHandler;
    // dynamixel::PacketHandler *packetHandler;
};