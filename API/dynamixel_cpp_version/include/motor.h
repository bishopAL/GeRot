#ifndef MOTOR_H_
#define MOTOR_H_
#include <vector>
#define ADDR_PRO_TORQUE_ENABLE          64                 // Control table address is different in Dynamixel model

#define ADDR_PRO_P_GAIN                 84 
#define ADDR_PRO_I_GAIN                 82 
#define ADDR_PRO_D_GAIN                 80 

#define Operating_Mode                  11

// Data Byte Length
#define ADDR_PRO_GOAL_POSITION          116
#define LEN_PRO_GOAL_POSITION           4
#define ADDR_PRO_PRESENT_POSITION       132
#define LEN_PRO_PRESENT_POSITION        4
#define ADDR_PRO_PRESENT_VELOCITY       128
#define LEN_PRO_PRESENT_VELOCITY        4

#define ADDR_PRO_GOAL_CURRENT           102  
#define LEN_PRO_GOAL_CURRENT            2
#define ADDR_PRO_PRESENT_CURRENT        126  
#define LEN_PRO_PRESENT_CURRENT         2

// Protocol version
#define PROTOCOL_VERSION                2.0                 // See which protocol version is used in the Dynamixel
//#define DEVICENAME                      "/dev/ttyUSB0"                                                            // ex) Windows: "COM1"   Linux: "/dev/ttyUSB0" Mac: "/dev/tty.usbserial-*"

#define TORQUE_ENABLE                   1                   // Value for enabling the torque
#define TORQUE_DISABLE                  0                   // Value for disabling the torque

#define ESC_ASCII_VALUE                 0x1b
//extern int port_num;
using namespace std;
extern int dxl_comm_result ;               // Communication result

// extern uint8_t dxl_addparam_pos_result ;              // AddParam result
// extern uint8_t dxl_addparam_tor_result ;              // AddParam result
// extern uint8_t dxl_getdata_pos_result ;               // GetParam result
// extern uint8_t dxl_getdata_tor_result ;               // GetParam result


// extern uint8_t dxl_error ;                            // Dynamixel error
// extern int32_t dxl_present_position[3] ;
// extern int32_t dxl_present_torque[3] ;
extern int port_num;
extern char* device_name;
extern int baudrate;
extern int groupwrite_pos_num;
extern int groupread_pos_num;
extern int groupwrite_tor_num;
extern int groupread_tor_num;

void set_P_I_D(int ,int, int);
void set_operation_mode(int);
void dxl_move();
void dxl_close();
void torque_enable();
void torque_disable();
void set_position(float *ang_rec);
void set_torque(float *tor);
void get_position(vector<float> &pos_present);
void get_velocity(vector<float> &vel_present);
void get_torque(vector<float> &tor_present);
void dxl_init();
void dxl_close();
void set_port_baudrate_ID(char *port, int baudrate_set, int *ID, int num, uint8_t type);
int torque2current(float tor);
float current2torque(int current);

#endif 
