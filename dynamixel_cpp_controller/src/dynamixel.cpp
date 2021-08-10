#include "dynamixel.h"

using namespace std;
using namespace dynamixel;
DxlAPI::DxlAPI()
{
    BAUDRATE = 1000000;
    ADDR_OPERATING_MODE = 11;
    ADDR_OPERATING_MODE_LENGTH = 1;
    ADDR_PRO_TORQUE_ENABLE = 64;
    ADDR_PRO_TORQUE_ENABLE_LENGTH = 1;
    ADDR_PRO_GOAL_POSITION = 116;
    ADDR_PRO_GOAL_POSITION_LENGTH = 4;
    ADDR_PRO_PRESENT_POSITION = 132;
    ADDR_PRO_PRESENT_POSITION_LENGTH = 4;
    ADDR_PRO_GOAL_CURRENT = 102;
    ADDR_PRO_GOAL_CURRENT_LENGTH = 2;
    ADDR_PRO_PROFILE_VELOCITY = 112;
    ADDR_PRO_PROFILE_VELOCITY_LENGTH = 4;
    ADDR_PRO_PROFILE_ACCELERATION = 108;
    ADDR_PRO_PROFILE_ACCELERATION_LENGTH = 4;
    ADDR_PRO_PRESENT_CURRENT = 126;
    ADDR_PRO_PRESENT_CURRENT_LENGTH = 2;
    ADDR_PRO_PRESENT_VELOCITY = 128;
    ADDR_PRO_PRESENT_VELOCITY_LENGTH = 4;
    ADDR_PRO_GOAL_VELOCITY = 104;
    ADDR_PRO_GOAL_VELOCITY_LENGTH = 4;
}

int DxlAPI::setID(vector<int> ids)
{
    ID.clear();
    for(int i=0; i<ids.size(); i++)
    {
        ID.push_back(ids[i]);
        cout << "The ID has been set to " << ids[i] << " ." << endl;
    }
    
    return 0;

}

void DxlAPI::setPort(string port)
{
    DEVICENAME = port;
    std::cout << "The port has been set to " << DEVICENAME << " ." << std::endl;
}

void DxlAPI::setBaudRate(int baudRate)
{
    BAUDRATE = baudRate;
    std::cout << "The baudRate has been set to " << BAUDRATE << " ." << std::endl;
}

void DxlAPI::connectToMotors()
{
    const char *temp = DEVICENAME.c_str();
    dynamixel::PortHandler *portHandler = dynamixel::PortHandler::getPortHandler(temp);
    dynamixel::PacketHandler *packetHandler = dynamixel::PacketHandler::getPacketHandler(2.0);

    // Initialize GroupSyncWrite
    dynamixel::GroupSyncWrite groupSyncWriteCurrent(portHandler, packetHandler, ADDR_PRO_GOAL_CURRENT, ADDR_PRO_GOAL_CURRENT_LENGTH);
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

    if (portHandler->openPort())
    {
        printf("Succeeded to open the port!\n");
    }
    if (portHandler->setBaudRate(BAUDRATE))
    {
        printf("Succeeded to change the baudrate!\n");
    }

}

DxlAPI::~DxlAPI()
{
    portHandler->closePort();
}
