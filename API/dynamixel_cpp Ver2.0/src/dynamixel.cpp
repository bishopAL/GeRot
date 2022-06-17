#include "dynamixel.h"

using namespace std;
using namespace dynamixel;
DxlAPI::DxlAPI(char *port, int baudrate_set, vector<int> ids, uint8_t type)
{
    BAUDRATE = baudrate_set;
    PORT_NAME = port;
    MOTOR_TYPE = type;
    ID.clear();
    for(int i=0; i<ids.size(); i++)
    {
        ID.push_back(ids[i]);
        cout << "The ID has been set to " << ids[i] << " ." << endl;
    }
    MOTOR_NUM = ID.size();
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
    portHandler = dynamixel::PortHandler::getPortHandler(PORT_NAME);
    packetHandler = dynamixel::PacketHandler::getPacketHandler(2.0);

    // Initialize GroupSyncWrite
    // dynamixel::GroupSyncWrite groupSyncWriteCurrent(portHandler, packetHandler, ADDR_PRO_GOAL_CURRENT, ADDR_PRO_GOAL_CURRENT_LENGTH);
    // dynamixel::GroupSyncWrite groupSyncWriteVelocity(portHandler, packetHandler, ADDR_PRO_GOAL_VELOCITY, ADDR_PRO_GOAL_VELOCITY_LENGTH);
    // dynamixel::GroupSyncWrite groupSyncWriteProfileVelocity(portHandler, packetHandler, ADDR_PRO_PROFILE_VELOCITY, ADDR_PRO_PROFILE_VELOCITY_LENGTH);
    // dynamixel::GroupSyncWrite groupSyncWriteProfileAcceleration(portHandler, packetHandler, ADDR_PRO_PROFILE_ACCELERATION, ADDR_PRO_PROFILE_ACCELERATION_LENGTH);
    // dynamixel::GroupSyncWrite groupSyncWriteTorqueEnable(portHandler, packetHandler, ADDR_PRO_TORQUE_ENABLE, ADDR_PRO_TORQUE_ENABLE_LENGTH);
    // // Initialize GroupSyncRead
    // dynamixel::GroupSyncRead groupSyncReadPosition(portHandler, packetHandler, ADDR_PRO_PRESENT_POSITION, ADDR_PRO_PRESENT_POSITION_LENGTH);
    // dynamixel::GroupSyncRead groupSyncReadVelocity(portHandler, packetHandler, ADDR_PRO_PRESENT_VELOCITY, ADDR_PRO_PRESENT_VELOCITY_LENGTH);
    // dynamixel::GroupSyncRead groupSyncReadCurrent(portHandler, packetHandler, ADDR_PRO_PRESENT_CURRENT, ADDR_PRO_PRESENT_CURRENT_LENGTH);

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

void DxlAPI::setOperatingMode(uint8_t mode)
{
    uint8_t dxl_error = 0;
    int dxl_comm_result;
    for(int i=0; i<MOTOR_NUM; i++)
    {
        dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, ID[i], ADDR_OPERATING_MODE, mode, &dxl_error);
    
        if (dxl_comm_result != COMM_SUCCESS)
        {
            printf("1%s\n", packetHandler->getTxRxResult(dxl_comm_result));
        }
        else if (dxl_error != 0)
        {
            printf("2%s\n", packetHandler->getRxPacketError(dxl_error));
        }
        else
        {
            printf("Dynamixel#%d has been successfully changed operating mode \n", ID[i]);
        }
    }
}

void DxlAPI::torqueEnable()
{
    uint8_t dxl_error = 0;
    int dxl_comm_result;
    for(int i=0; i<MOTOR_NUM; i++)
    {
        dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, ID[i], ADDR_PRO_TORQUE_ENABLE, 1, &dxl_error);
    
        if (dxl_comm_result != COMM_SUCCESS)
        {
            printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
        }
        else if (dxl_error != 0)
        {
            printf("%s\n", packetHandler->getRxPacketError(dxl_error));
        }
        else
        {
            printf("Dynamixel#%d has been successfully torque on \n", ID[i]);
        }
    }
}

void DxlAPI::torqueDisable()
{
    uint8_t dxl_error = 0;
    int dxl_comm_result;
    for(int i=0; i<MOTOR_NUM; i++)
    {
        dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, ID[i], ADDR_PRO_TORQUE_ENABLE, 0, &dxl_error);
    
        if (dxl_comm_result != COMM_SUCCESS)
        {
            printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
        }
        else if (dxl_error != 0)
        {
            printf("%s\n", packetHandler->getRxPacketError(dxl_error));
        }
        else
        {
            printf("Dynamixel#%d has been successfully torque off \n", ID[i]);
        }
    }
}

void DxlAPI::setPosition(vector<float> posVector)
{
    int ang[MOTOR_NUM];
    uint8_t param_goal_position[4];
    bool dxl_addparam_result;
    int dxl_comm_result;
    //calculate ang 
    for(int i =0; i<MOTOR_NUM; i++)
       ang[i] = (int) (posVector[i]/(3.1416*2)*4096 + 2047); 
    dynamixel::GroupSyncWrite groupSyncWritePosition(portHandler, packetHandler, ADDR_PRO_GOAL_POSITION, ADDR_PRO_GOAL_POSITION_LENGTH);
    for(int i=0; i<MOTOR_NUM; i++)
    {
        param_goal_position[0] = DXL_LOBYTE(DXL_LOWORD(ang[i]));
        param_goal_position[1] = DXL_HIBYTE(DXL_LOWORD(ang[i]));
        param_goal_position[2] = DXL_LOBYTE(DXL_HIWORD(ang[i]));
        param_goal_position[3] = DXL_HIBYTE(DXL_HIWORD(ang[i]));
        dxl_addparam_result = groupSyncWritePosition.addParam(ID[i], param_goal_position);
    }
    dxl_comm_result = groupSyncWritePosition.txPacket();
    if (dxl_comm_result != COMM_SUCCESS) printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));

    // Clear syncwrite parameter storage
    groupSyncWritePosition.clearParam();
}

void DxlAPI::getPosition()
{
    present_position.clear();
    int dxl_comm_result;
    bool dxl_addparam_result, dxl_getdata_result;
    dynamixel::GroupSyncRead groupSyncReadPosition(portHandler, packetHandler, ADDR_PRO_PRESENT_POSITION, ADDR_PRO_PRESENT_POSITION_LENGTH);
    for(int i =0; i<MOTOR_NUM; i++)
    dxl_addparam_result = groupSyncReadPosition.addParam(ID[i]);
    dxl_comm_result = groupSyncReadPosition.txRxPacket();
    if (dxl_comm_result != COMM_SUCCESS)
    {
    printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        dxl_getdata_result = groupSyncReadPosition.isAvailable(ID[i], ADDR_PRO_PRESENT_POSITION, ADDR_PRO_PRESENT_POSITION_LENGTH);
        if (dxl_getdata_result != true)
        {
            fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", ID[i]);
        }
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        uint32_t temp = groupSyncReadPosition.getData(ID[i], ADDR_PRO_PRESENT_POSITION, ADDR_PRO_PRESENT_POSITION_LENGTH);
        present_position.push_back((float(temp)-2047.0)/4096.0*(2*3.1416));  // value range 0~4095  <--> angle range -3.1416~3.1416
    }
    groupSyncReadPosition.clearParam();
}

void DxlAPI::getVelocity()
{
    present_velocity.clear();
    int dxl_comm_result;
    bool dxl_addparam_result, dxl_getdata_result;
    dynamixel::GroupSyncRead groupSyncReadVelocity(portHandler, packetHandler, ADDR_PRO_PRESENT_VELOCITY, ADDR_PRO_PRESENT_VELOCITY_LENGTH);
    for(int i =0; i<MOTOR_NUM; i++)
    dxl_addparam_result = groupSyncReadVelocity.addParam(ID[i]);
    dxl_comm_result = groupSyncReadVelocity.txRxPacket();
    if (dxl_comm_result != COMM_SUCCESS)
    {
    printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        dxl_getdata_result = groupSyncReadVelocity.isAvailable(ID[i], ADDR_PRO_PRESENT_VELOCITY, ADDR_PRO_PRESENT_VELOCITY_LENGTH);
        if (dxl_getdata_result != true)
        {
            fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", ID[i]);
        }
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        int temp = groupSyncReadVelocity.getData(ID[i], ADDR_PRO_PRESENT_VELOCITY, ADDR_PRO_PRESENT_VELOCITY_LENGTH);
        if (temp>0x7fffffff) temp -= 0xffffffff;
        present_velocity.push_back(float(temp) * 0.229 * 2 * 3.1416 / 60);
    }
    groupSyncReadVelocity.clearParam();
}

void DxlAPI::setTorque(vector<float> torVector)
{
    uint8_t param_goal_current[2];
    bool dxl_addparam_result;
    int dxl_comm_result;
    int current[MOTOR_NUM];
    for(int i =0;i<MOTOR_NUM;i++)
    {
        current[i] = torque2current(torVector[i]);
    }

    dynamixel::GroupSyncWrite groupSyncWriteCurrent(portHandler, packetHandler, ADDR_PRO_GOAL_CURRENT, ADDR_PRO_GOAL_CURRENT_LENGTH);
    for(int i=0; i<MOTOR_NUM; i++)
    {
        param_goal_current[0] = DXL_LOBYTE(current[i]);
        param_goal_current[1] = DXL_HIBYTE(current[i]);
        dxl_addparam_result = groupSyncWriteCurrent.addParam(ID[i], param_goal_current);
    }
    dxl_comm_result = groupSyncWriteCurrent.txPacket();
    if (dxl_comm_result != COMM_SUCCESS) printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
    // Clear syncwrite parameter storage
    groupSyncWriteCurrent.clearParam();
}

void DxlAPI::getTorque()
{
    present_torque.clear();
    int dxl_comm_result;
    bool dxl_addparam_result, dxl_getdata_result;
    dynamixel::GroupSyncRead groupSyncReadCurrent(portHandler, packetHandler, ADDR_PRO_PRESENT_CURRENT, ADDR_PRO_PRESENT_CURRENT_LENGTH);
    for(int i =0; i<MOTOR_NUM; i++)
    dxl_addparam_result = groupSyncReadCurrent.addParam(ID[i]);
    dxl_comm_result = groupSyncReadCurrent.txRxPacket();
    if (dxl_comm_result != COMM_SUCCESS)
    {
    printf("%s\n", packetHandler->getTxRxResult(dxl_comm_result));
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        dxl_getdata_result = groupSyncReadCurrent.isAvailable(ID[i], ADDR_PRO_PRESENT_CURRENT, ADDR_PRO_PRESENT_CURRENT_LENGTH);
        if (dxl_getdata_result != true)
        {
            fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", ID[i]);
        }
    }
    for(int i =0; i<MOTOR_NUM; i++)
    {
        uint32_t temp = groupSyncReadCurrent.getData(ID[i], ADDR_PRO_PRESENT_CURRENT, ADDR_PRO_PRESENT_CURRENT_LENGTH);
        if (temp > 0x7fff) temp -= 65536;
        present_torque.push_back(current2torque(temp));
    }
    groupSyncReadCurrent.clearParam();
}

int DxlAPI::torque2current(float tor)
{
  int current;
  if(tor>0)
  current = int((tor*K_torque2current[MOTOR_TYPE]+B_torque2current[MOTOR_TYPE])*1000);
  else
  current = int((tor*K_torque2current[MOTOR_TYPE]-B_torque2current[MOTOR_TYPE])*1000);
  return current;
}

float DxlAPI::current2torque(int current)
{
  float torque;
  if(current > -B_torque2current[MOTOR_TYPE] && current < B_torque2current[MOTOR_TYPE])
  torque = 0;
  else if (current > B_torque2current[MOTOR_TYPE])
  torque = (float(current)/1000 - B_torque2current[MOTOR_TYPE])/K_torque2current[MOTOR_TYPE];
  else
  torque = (float(current)/1000 + B_torque2current[MOTOR_TYPE])/K_torque2current[MOTOR_TYPE];
  return torque;
}
