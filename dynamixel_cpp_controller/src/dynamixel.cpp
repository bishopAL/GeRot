#include "dynamixel.h"

using namespace std;
DxlAPI::DxlAPI()
{
    BAUDRATE = 1000000;
}

DxlAPI::setID(int id[])
{
    ID.clear();
    int size;
    size = sizeof(id)/sizeof(int);
    for(int i=0; i<size; i++)
    {
        ID.push_back(id[i]);
    }
    std::cout << "The ID has been set to " << ID << " ." << std::endl;
}

DxlAPI::setPort(string port)
{
    DEVICENAME = port;
    std::cout << "The port has been set to " << DEVICENAME << " ." << std::endl;
}

DxlAPI::setBaudRate(int baudRate)
{
    BAUDRATE = baudRate;
    std::cout << "The baudRate has been set to " << BAUDRATE << " ." << std::endl;
}

DxlAPI::connectToMotors()
{
    dynamixel::PortHandler *portHandler = dynamixel::PortHandler::getPortHandler(DEVICENAME);
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
