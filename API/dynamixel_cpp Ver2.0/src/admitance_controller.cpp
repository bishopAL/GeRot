#include <dynamixel.h>
#include <unistd.h>
#include <limits.h>
#include <pthread.h>
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <unistd.h>
#include <vector>
#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#define TC 1

using namespace std;
int main()
{
    vector<int> ID;
    vector<float> start_pos;
    vector<float> target_tor;
    float K = 0.1;
    float D = 0.005;
    ID.push_back(1);
    start_pos.push_back(0.0);
    target_tor.push_back(0.0);
    DxlAPI gecko("/dev/ttyUSB0", 3000000, ID, 2);

    gecko.setOperatingMode(3);  //3 position control; 0 current control
    gecko.torqueEnable();
    gecko.setPosition(start_pos);
    usleep(1e6);
    if(TC)
    {
        gecko.torqueDisable();
        gecko.setOperatingMode(0);
        gecko.torqueEnable();
    }
    
    for(int times=0; times<10000; times++)
    {
        if(TC)
        {
            gecko.getPosition();
            gecko.getVelocity();
            target_tor[0] = K*(0-gecko.present_position[0]) + D*(0-gecko.present_velocity[0]);
            gecko.setTorque(target_tor);
            cout<<"Time: "<< times<<" , Vel: "<<gecko.present_velocity[0]<<" , Pos: "<<gecko.present_position[0]<<" , tor: "<< target_tor[0]<<endl;
        }
        else{
            gecko.getTorque();
            cout<<"Time: "<< times<<" , present torque: "<<gecko.present_current[0]<<endl;
        }
    }
    gecko.torqueDisable();
}