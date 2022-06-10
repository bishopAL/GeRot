#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif

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
#include "../include/motor.h" 
#define TC 1
using namespace std;
struct timeval startTime, endTime;
const int num = 1;
int ID[num] = {1};
float calib_torque[1]={-50};
float zero_torque[1]={50};
float start_pos[1] = {0.0};
vector<float> present_position;
vector<float> present_velocity;
vector<float> present_torque;
float K = 0.1;
float D = 0.005;

int main(void) 
{
	
	set_port_baudrate_ID("/dev/ttyUSB0", 3000000, ID, num, 2);  // 2 means XC330

	dxl_init();
	// set_P_I_D(50,0,0); //P,I,D
	set_operation_mode(3); //3 position control; 0 current control
	torque_enable();
	set_position(start_pos);
	usleep(1e6);
	if(TC)
	{
		torque_disable();
		set_operation_mode(0); //3 position control; 0 current control
		torque_enable();
	}
	
	for(int times=0; times<5000; times++)
	{
		if(TC)
		{
			get_position(present_position);
			get_velocity(present_velocity);
			calib_torque[0] = K*(0-present_position[0]) + D*(0-present_velocity[0]);
			set_torque(calib_torque);
			cout<<"Time: "<< times<<" , target torque: "<<calib_torque[0]<<endl;
		}
		else{
			get_torque(present_torque);
			cout<<"Time: "<< times<<" , present torque: "<<present_torque[0]<<endl;
		}
		
	}
	dxl_close();

		
    return 0;
}
