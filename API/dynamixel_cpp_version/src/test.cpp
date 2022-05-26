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

#include <fstream>
#include <string>
#include "../include/motor.h" 
     
using namespace std;
struct timeval startTime, endTime;
const int num = 12;
int ID[num] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
int main(void) 
{
	vector<float> present_position;
	vector<float> present_torque;
	set_port_baudrate_ID("/dev/ttyUSB1", 4000000, ID, num, 2);  // 2 means XC330
	dxl_init();
	// set_P_I_D(50,0,0); //P,I,D
	set_operation_mode(0); //3 position control; 0 current control
	torque_enable();
	for(int times=0; times<20; times++)
	{
		float calib_torque[1]={50};
		float zero_torque[1]={50};
		calib_torque[0] = 50 + 5 * times;
		set_torque(calib_torque);
		usleep(5*1e6); // 5 s
		set_torque(zero_torque);
		usleep(100*1e3); // 100 ms
		cout<<"Time: "<< times<<" , calib_torque: "<<calib_torque[0]<<endl;
	}
	dxl_close();

		
    return 0;
}
