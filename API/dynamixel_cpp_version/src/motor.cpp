#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <unistd.h>
#include <vector>
#include <iostream>
#include "motor.h"                             // Uses Dynamixel SDK library
extern "C" {
#include "../include/dynamixel_sdk.h"   
}

using namespace std;
int dxl_comm_result = COMM_TX_FAIL;               // Communication result
vector<int> dxl_ID;
uint8_t dxl_ID_num;
uint8_t dxl_addparam_pos_result = False;              // AddParam result
uint8_t dxl_getdata_pos_result = False;               // GetParam result
uint8_t dxl_addparam_vel_result = False;              // AddParam result
uint8_t dxl_getdata_vel_result = False;               // GetParam result
uint8_t dxl_addparam_tor_result = False;              // AddParam result
uint8_t dxl_getdata_tor_result = False;               // GetParam result
uint8_t dxl_error = 0;                            // Dynamixel error
int port_num = 0;
int groupwrite_pos_num = 0;
int groupread_pos_num = 0;
int groupwrite_tor_num = 0;
int groupread_tor_num = 0;
char *device_name = "/dev/ttyUSB0";
int baudrate = 3000000;
uint8_t motor_type = 0;  // 0: XM430; 1: XL330; 2: XC330; 3: XH540
// current-torque relationship X: torque Y: current
// XM430: wait for measurement
// XL330: not good
// XC330: X>0: Y = 2.096 * X + 0.025; X<0: Y = 2.096 * X - 0.025
// XH540: wait for measurement

float K_torque2current[4] = {1,1,2.096,1};
float B_torque2current[4] = {0,0,0.040,0};

void set_port_baudrate_ID(char *port, int baudrate_set, int *ID, int num, uint8_t type)
{
  device_name = port;
  baudrate = baudrate_set;
  dxl_ID_num = num;
  motor_type = type;

  for(int i=0; i<num; i++)
  {
    dxl_ID.push_back(ID[i]);
  }
}

void dxl_init()
{
  port_num = portHandler(device_name);
  packetHandler();
  int groupwrite_pos_num = groupSyncWrite(port_num, PROTOCOL_VERSION, ADDR_PRO_GOAL_POSITION, LEN_PRO_GOAL_POSITION);
  int groupread_pos_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
  int groupwrite_tor_num = groupSyncWrite(port_num, PROTOCOL_VERSION, ADDR_PRO_GOAL_CURRENT, LEN_PRO_GOAL_CURRENT);
  int groupread_tor_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_CURRENT, LEN_PRO_PRESENT_CURRENT);

    // Open port
  if (openPort(port_num))
  {printf("Succeeded to open the port!\n");}
  else
  {printf("Failed to open the port!\n");}

  // Set port baudrate
  if (setBaudRate(port_num, baudrate))
  {printf("Succeeded to change the baudrate!\n");}
  else
  {printf("Failed to change the baudrate!\n");  }


  // Add parameter storage for Dynamixel present position torque value
  
}


void set_P_I_D(int DXL_P_GAIN_VALUE,int DXL_I_GAIN_VALUE,int DXL_D_GAIN_VALUE)
{
  for(int i =0 ;i<dxl_ID_num ;i++)
  {
    write2ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], ADDR_PRO_P_GAIN , DXL_P_GAIN_VALUE);
        if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      {
        printf("error:1 %s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
      }
      else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
      {
        printf("error2 %s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
      }
      else
      {
        printf("[%d] Dynamixel P GAIN has changed %d\n",dxl_ID[i],DXL_P_GAIN_VALUE);
      }

    write2ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], ADDR_PRO_I_GAIN , DXL_I_GAIN_VALUE);
        if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      {
        printf("error:1 %s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
      }
      else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
      {
        printf("error2 %s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
      }
      else
      {
        printf("[%d] Dynamixel I GAIN has changed %d\n",dxl_ID[i],DXL_I_GAIN_VALUE);
      }
    write2ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], ADDR_PRO_D_GAIN , DXL_D_GAIN_VALUE);

      if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      {
        printf("error:1 %s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
      }
      else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
      {
        printf("error2 %s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
      }
      else
      {
        printf("[%d] Dynamixel D GAIN has changed %d\n ",dxl_ID[i],DXL_D_GAIN_VALUE);
      }
  }
} 

void set_operation_mode(int mode_num)
{
  for(int i =0 ;i<dxl_ID_num ;i++)
  {
    write1ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], Operating_Mode, mode_num);
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    {
      printf("setting operating mode error1 %s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    }
    else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
    {
      printf("setting operating mode error2 %s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
    }
    else
    {
      printf("%d Dynamixel has mode changed \n",dxl_ID[i]);
    }
  }
    // Enable Dynamixel Torqu

}

void torque_enable()
{
  for(int i =0 ;i<dxl_ID_num ;i++)
  {
    write1ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE);
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    {
      printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    }
    else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
    {
      printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
    }
    else
    {
      printf("%d has been successfully turned on \n", dxl_ID[i]);
    }
  }
}

void torque_disable()
{
  for(int i =0 ;i<dxl_ID_num ;i++)
  {
    write1ByteTxRx(port_num, PROTOCOL_VERSION, dxl_ID[i], ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE);
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    {
      printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    }
    else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
    {
      printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
    }
    else
    {
      printf("%d has been successfully turned off \n", dxl_ID[i]);
    }
  }
}

void set_position(float *ang_set)
{
  int ang[dxl_ID_num];
  //calculate ang 
  for(int i =0; i<dxl_ID_num; i++)
  {   ang[i] = (int) (ang_set[i]/(3.1416*2)*4096 + 2047); }
  int groupwrite_pos_num = groupSyncWrite(port_num, PROTOCOL_VERSION, ADDR_PRO_GOAL_POSITION, LEN_PRO_GOAL_POSITION);
  // Add Dynamixel goal position value to the Syncwrite storage 
  for(int i =0; i<dxl_ID_num; i++)
  {   
    dxl_addparam_pos_result = groupSyncWriteAddParam(groupwrite_pos_num, dxl_ID[i], ang[i], LEN_PRO_GOAL_POSITION);
    if (dxl_addparam_pos_result != True)
    {
    fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", dxl_ID[i]);
    }
  }
  // Syncwrite goal position
  groupSyncWriteTxPacket(groupwrite_pos_num);
  if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    printf("set position error%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    
  groupSyncWriteClearParam(groupwrite_pos_num);// Clear syncwrite parameter storage
}

void get_position(vector<float> &pos_present)
{
  // define the groupSyncRead port
  int groupread_pos_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION); 
  for(int i =0; i<dxl_ID_num; i++)
  {
    dxl_addparam_pos_result = groupSyncReadAddParam(groupread_pos_num, dxl_ID[i]);
    if (dxl_addparam_pos_result != True)
      {  fprintf(stderr, "init positionRead [ID:%03d] groupSyncRead pos addparam failed", dxl_ID[i]);}
  }
  
  pos_present.clear();// clean the former vector
  groupSyncReadTxRxPacket(groupread_pos_num); // Syncread present position
  {
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
  }
    // Check if groupsyncread data of Dynamixel is available
  for(int i =0 ;i<dxl_ID_num ;i++)
    {
      dxl_getdata_pos_result = groupSyncReadIsAvailable(groupread_pos_num, dxl_ID[i], ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
      if (dxl_getdata_pos_result != True)
      { fprintf(stderr, "get position [ID:%d] groupSyncRead tor getdata failed \n", dxl_ID[i]);}
    }
    
    // Get Dynamixel present position value
  for(int i =0 ;i<dxl_ID_num ;i++)
  { 
    uint32_t temp = groupSyncReadGetData(groupread_pos_num, dxl_ID[i], ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    pos_present.push_back((float(temp)-2047.0)/4096.0*(2*3.1416));  // value range 0~4095  <--> angle range -3.1416~3.1416
  }
  groupSyncReadClearParam(groupread_pos_num);
}

void get_velocity(vector<float> &vel_present)
{
  // define the groupSyncRead port
  int groupread_vel_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_VELOCITY, LEN_PRO_PRESENT_VELOCITY); 
  for(int i =0; i<dxl_ID_num; i++)
  {
    dxl_addparam_pos_result = groupSyncReadAddParam(groupread_vel_num, dxl_ID[i]);
    if (dxl_addparam_pos_result != True)
      {  fprintf(stderr, "init velocityRead [ID:%03d] groupSyncRead vel addparam failed", dxl_ID[i]);}
  }
  
  vel_present.clear();// clean the former vector
  groupSyncReadTxRxPacket(groupread_vel_num); // Syncread present position
  {
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
  }
    // Check if groupsyncread data of Dynamixel is available
  for(int i =0 ;i<dxl_ID_num ;i++)
    {
      dxl_getdata_vel_result = groupSyncReadIsAvailable(groupread_vel_num, dxl_ID[i], ADDR_PRO_PRESENT_VELOCITY, LEN_PRO_PRESENT_VELOCITY);
      if (dxl_getdata_vel_result != True)
      { fprintf(stderr, "get velocity [ID:%d] groupSyncRead tor getdata failed \n", dxl_ID[i]);}
    }
    
    // Get Dynamixel present position value
  for(int i =0 ;i<dxl_ID_num ;i++)
  { 
    int temp = groupSyncReadGetData(groupread_vel_num, dxl_ID[i], ADDR_PRO_PRESENT_VELOCITY, LEN_PRO_PRESENT_VELOCITY);
    if (temp>0x7fffffff) temp -= 0xffffffff;
    vel_present.push_back(float(temp) * 0.229 * 2 * 3.1416 / 60);
  }
  groupSyncReadClearParam(groupread_vel_num);
}

void set_torque(float *tor_set)
{
  int tor[dxl_ID_num];
  for(int i =0;i<dxl_ID_num;i++)
  {
    tor[i] = torque2current(tor_set[i]);
  }
  int groupwrite_tor_num = groupSyncWrite(port_num, PROTOCOL_VERSION, ADDR_PRO_GOAL_CURRENT, LEN_PRO_GOAL_CURRENT);
     // Add Dynamixel goal position value to the Syncwrite storage 
  for(int i =0;i<dxl_ID_num;i++)
    {   
    dxl_addparam_tor_result = groupSyncWriteAddParam(groupwrite_tor_num, dxl_ID[i], tor[i], LEN_PRO_GOAL_CURRENT);
      if (dxl_addparam_tor_result != True)
      {
      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", dxl_ID[i]);
      }
    }
    // Syncwrite goal torque
    groupSyncWriteTxPacket(groupwrite_tor_num);
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      printf("set torque error%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    groupSyncWriteClearParam(groupwrite_tor_num);// Clear syncwrite parameter storage

}

void get_torque(vector<float> &tor_present)
{
  int groupread_tor_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_CURRENT, LEN_PRO_PRESENT_CURRENT);
  for(int i =0; i<dxl_ID_num; i++)
  {
    dxl_addparam_tor_result = groupSyncReadAddParam(groupread_tor_num, dxl_ID[i]);
    if (dxl_addparam_tor_result != True)
      {  fprintf(stderr, "init torqueRead [ID:%03d] groupSyncRead pos addparam failed", dxl_ID[i]);}
  }
  tor_present.clear();
  groupSyncReadTxRxPacket(groupread_tor_num); // Syncread present position
    {
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      printf("get torque error%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    }
    // Check if groupsyncread data of Dynamixel#1 is available
    
    for(int i =0 ;i<dxl_ID_num ;i++)
    {
      dxl_getdata_tor_result = groupSyncReadIsAvailable(groupread_tor_num, dxl_ID[i], ADDR_PRO_PRESENT_CURRENT, LEN_PRO_PRESENT_CURRENT);
      if (dxl_getdata_tor_result != True)
      { fprintf(stderr, "get torque [ID:%d] groupSyncRead tor getdata failed \n", dxl_ID[i]);}
    }
    
    // Get Dynamixel present torque value
    for(int i =0 ;i<dxl_ID_num ;i++)
    { 
      uint32_t temp = groupSyncReadGetData(groupread_tor_num, dxl_ID[i], ADDR_PRO_PRESENT_CURRENT, LEN_PRO_PRESENT_CURRENT);
      if (temp > 0x7fff) temp -= 65536;
      tor_present.push_back(current2torque(temp));
    }
    groupSyncReadClearParam(groupread_tor_num);
}

void dxl_close()
{
  for(int i =0;i<dxl_ID_num;i++)
  {
  write1ByteTxRx(port_num, PROTOCOL_VERSION,  dxl_ID[i], ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE);
  }
  // Close port
  closePort(port_num);
}

int torque2current(float tor)
{
  int current;
  if(tor>0)
  current = int((tor*K_torque2current[motor_type]+B_torque2current[motor_type])*1000);
  else
  current = int((tor*K_torque2current[motor_type]-B_torque2current[motor_type])*1000);
  return current;
}

float current2torque(int current)
{
  float torque;
  if(current > -B_torque2current[motor_type] && current < B_torque2current[motor_type])
  torque = 0;
  else if (current > B_torque2current[motor_type])
  torque = (float(current)/1000 - B_torque2current[motor_type])/K_torque2current[motor_type];
  else
  torque = (float(current)/1000 + B_torque2current[motor_type])/K_torque2current[motor_type];
  return torque;
}
