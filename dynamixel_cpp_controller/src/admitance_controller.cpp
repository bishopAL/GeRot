#include <dynamixel.h>

int main()
{
    DxlAPI gecko;
    vector<int> ids;
    for(int i=0; i<3; i++)
    {
        ids.push_back(i);
    }
    gecko.setID(ids);
    gecko.setBaudRate(1000000);
    gecko.setPort("/dev/ttyUSB0");
    gecko.connectToMotors();
}