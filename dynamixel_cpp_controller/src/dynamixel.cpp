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
    cout << "The ID has been set to " << ID << " ." << endl;
}

DxlAPI::setPort(string port)
{
    DEVICENAME = port;
    cout << "The port has been set to " << DEVICENAME << " ." << endl;
}

DxlAPI::setBaudRate(int baudRate)
{
    BAUDRATE = baudRate;
    cout << "The baudRate has been set to " << BAUDRATE << " ." << endl;
}

DxlAPI::connectToMotors()
{
    dynamixel::PortHandler *portHandler = dynamixel::PortHandler::getPortHandler(DEVICENAME);
    dynamixel::PacketHandler *packetHandler = dynamixel::PacketHandler::getPacketHandler(2.0);
}
