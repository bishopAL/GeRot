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
	vector<int> present_torque;
	set_port_baudrate_ID("/dev/ttyUSB1", 4000000, ID, num);
	dxl_init();
	set_P_I_D(50,0,0); //P,I,D
	set_operation_mode(3); //3 position control; 0 current control
	torque_enable();
	for(int times=0; times<2000; times++)
	{
		float angle[num] = {0, 0};
		gettimeofday(&startTime,NULL);
		set_position(angle);
		get_position(present_position);
		get_torque(present_torque);
		/*
		cout<<"Position: ";
		for (vector<float>::iterator it = present_position.begin(); it != present_position.end(); it++) 
		{
        cout << *it <<", ";
    	}
		cout<<"end. "<<endl;
		*/
		gettimeofday(&endTime,NULL);
		double timeUse = (1000000.0*(endTime.tv_sec - startTime.tv_sec) + endTime.tv_usec - startTime.tv_usec)/1000.0; //ms
		cout<<"Time used: "<<timeUse<<endl;
	}
	dxl_close();

		
    return 0;
}
