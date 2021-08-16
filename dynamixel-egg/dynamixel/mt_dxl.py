from dynamixel_sdk import *
import math
import time
import numpy as np


class DxlAPI(object):

    def __init__(self, dxl_id, port_name, baudrate=4000000, model='XM430-W350'):
        self.DXL_ID = dxl_id
        self.BAUDRATE = baudrate
        self.DEVICENAME = port_name
        self.PROTOCOL_VERSION = 2.0
        self.ADDR_OPERATING_MODE = 11  # 1 Byte
        self.ADDR_OPERATING_MODE_LENGTH = 1  # 1 Byte
        self.ADDR_PRO_TORQUE_ENABLE = 64  # Control table address is different in Dynamixel model   # 1 Byte
        self.ADDR_PRO_TORQUE_ENABLE_LENGTH = 1
        self.ADDR_PRO_GOAL_POSITION = 116  # 4 Bytes
        self.ADDR_PRO_GOAL_POSITION_LENGTH = 4
        self.ADDR_PRO_PRESENT_POSITION = 132  # 4 Bytes
        self.ADDR_PRO_PRESENT_POSITION_LENGTH = 4
        self.ADDR_PRO_GOAL_CURRENT = 102  # 2 Bytes
        self.ADDR_PRO_GOAL_CURRENT_LENGTH = 2
        self.ADDR_PRO_PROFILE_VELOCITY = 112  # 4 Bytes
        self.ADDR_PRO_PROFILE_VELOCITY_LENGTH = 4
        self.ADDR_PRO_PROFILE_ACCELERATION = 108  # 4 Bytes
        self.ADDR_PRO_PROFILE_ACCELERATION_LENGTH = 4
        self.ADDR_PRO_PRESENT_CURRENT = 126  # 2 Bytes
        self.ADDR_PRO_PRESENT_CURRENT_LENGTH = 2
        self.ADDR_PRO_PRESENT_VELOCITY = 128  # 4 Bytes
        self.ADDR_PRO_PRESENT_VELOCITY_LENGTH = 4
        self.ADDR_PRO_GOAL_VELOCITY = 104  # 4 Bytes
        self.ADDR_PRO_GOAL_VELOCITY_LENGTH = 4
        self.portHandler = PortHandler(self.DEVICENAME)
        self.packetHandler = PacketHandler(self.PROTOCOL_VERSION)
        # Initialize GroupSyncWrite
        supportMotorModel = ['XM430-W350', 'XH540-W270', 'XL330-W288']
        if model in supportMotorModel:
            self.MODEL = model
        else:
            self.MODEL = 'XM430-W350'
            print('Unsupported motor founded. Please check the motor model.')
        self.groupSyncWriteCurrent = GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_CURRENT,
                                                    self.ADDR_PRO_GOAL_CURRENT_LENGTH)
        self.groupSyncWritePosition = GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_POSITION,
                                                     self.ADDR_PRO_GOAL_POSITION_LENGTH)
        self.groupSyncWriteVelocity = GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_VELOCITY,
                                                     self.ADDR_PRO_GOAL_VELOCITY_LENGTH)
        self.groupSyncWriteProfileVelocity = GroupSyncWrite(self.portHandler, self.packetHandler,
                                                            self.ADDR_PRO_PROFILE_VELOCITY,
                                                            self.ADDR_PRO_PROFILE_VELOCITY_LENGTH)
        self.groupSyncWriteProfileAcceleration = GroupSyncWrite(self.portHandler, self.packetHandler,
                                                                self.ADDR_PRO_PROFILE_ACCELERATION,
                                                                self.ADDR_PRO_PROFILE_ACCELERATION_LENGTH)
        self.groupSyncWriteTorqueEnable = GroupSyncWrite(self.portHandler, self.packetHandler,
                                                         self.ADDR_PRO_TORQUE_ENABLE,
                                                         self.ADDR_PRO_TORQUE_ENABLE_LENGTH)

        # Initialize GroupSyncRead
        self.groupSyncReadPosition = GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PRESENT_POSITION,
                                                   self.ADDR_PRO_PRESENT_POSITION_LENGTH)
        self.groupSyncReadVelocity = GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PRESENT_VELOCITY,
                                                   self.ADDR_PRO_PRESENT_VELOCITY_LENGTH)
        self.groupSyncReadProfileVelocity = GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PROFILE_VELOCITY,
                                                   self.ADDR_PRO_PROFILE_VELOCITY_LENGTH)
        self.groupSyncReadProfileAcceleration = GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PROFILE_ACCELERATION,
                                                   self.ADDR_PRO_PROFILE_ACCELERATION_LENGTH)
        self.groupSyncReadCurrent = GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PRESENT_CURRENT,
                                                  self.ADDR_PRO_PRESENT_CURRENT_LENGTH)
        # Open Port
        if self.portHandler.openPort():
            print("Succeeded to open the port")
        else:
            print("Failed to open the port")
        if self.portHandler.setBaudRate(self.BAUDRATE):
            print("Succeeded to change the baudrate")
        else:
            print("Failed to change the baudrate")

        # GroupSyncRead addparam
        for i in dxl_id:
            dxl_addparam_result = self.groupSyncReadPosition.addParam(i)
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncReadPosition addparam failed" % i)
            dxl_addparam_result = self.groupSyncReadVelocity.addParam(i)
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncReadVelocity addparam failed" % i)
            dxl_addparam_result = self.groupSyncReadCurrent.addParam(i)
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncReadCurrent addparam failed" % i)
        print('Initialize Completed!')

    def get_position(self):
        dxl_comm_result = self.groupSyncReadPosition.txRxPacket()
        position_list = []
        for i in self.DXL_ID:
            dxl_present_position = self.groupSyncReadPosition.getData(i, self.ADDR_PRO_PRESENT_POSITION,
                                                                      self.ADDR_PRO_PRESENT_POSITION_LENGTH)
            if dxl_present_position > 0x7fffffff:
                dxl_present_position -= 4294967296
            dxl_present_position = float(dxl_present_position) / 4096 * (math.pi * 2)
            dxl_present_position = dxl_present_position % (2 * math.pi) - math.pi
            position_list.append(dxl_present_position)
        return np.array(position_list)
        
    def get_profile_velocity(self):
        dxl_comm_result = self.groupSyncReadProfileVelocity.txRxPacket()
        profile_velocity_list = []
        for i in self.DXL_ID:
            dxl_profile_velocity = self.groupSyncReadProfileVelocity.getData(i, self.ADDR_PRO_PROFILE_VELOCITY,
                                                                      self.ADDR_PRO_PROFILE_VELOCITY_LENGTH)
            if dxl_profile_velocity > 0x7fffffff:
                dxl_profile_velocity -= 4294967296
            profile_velocity_list.append(dxl_profile_velocity)
        return np.array(profile_velocity_list)

    def get_velocity(self):
        dxl_comm_result = self.groupSyncReadVelocity.txRxPacket()
        velocity_list = []
        for i in self.DXL_ID:
            dxl_present_velocity = self.groupSyncReadVelocity.getData(i, self.ADDR_PRO_PRESENT_VELOCITY,
                                                                     self.ADDR_PRO_PRESENT_VELOCITY_LENGTH)
            if dxl_present_velocity > 0x7fffffff:
                dxl_present_velocity -= 4294967296
            dxl_present_velocity = dxl_present_velocity * 0.229 / 60 * (2 * math.pi)
            velocity_list.append(dxl_present_velocity)
        return np.array(velocity_list)

    def get_torque(self):
        dxl_comm_result = self.groupSyncReadCurrent.txRxPacket()
        torque_list = []
        for i in self.DXL_ID:
            dxl_present_current = self.groupSyncReadCurrent.getData(i, self.ADDR_PRO_PRESENT_CURRENT,
                                                                     self.ADDR_PRO_PRESENT_CURRENT_LENGTH)
            if dxl_present_current > 0x7fff:
                dxl_present_current -= 65536
            if self.MODEL == 'XM430-W350':
                dxl_present_current = dxl_present_current * 2.69 / 1000
                if dxl_present_current < - 0.00269 * 4:
                    dxl_present_torque = (dxl_present_current + 0.00269 * 4) / 0.578
                elif dxl_present_current > 0.00269:
                    dxl_present_torque = (dxl_present_current - 0.00269) / 0.578
                else:
                    dxl_present_torque = 0
            elif self.MODEL == 'XH540-W270':
                dxl_present_current = dxl_present_current * 2.69 / 1000
                if dxl_present_current < - 0.00269 * 4:
                    dxl_present_torque = (dxl_present_current + 0.00269 * 4) / 0.578
                elif dxl_present_current > 0.00269:
                    dxl_present_torque = (dxl_present_current - 0.00269) / 0.578
                else:
                    dxl_present_torque = 0
            elif self.MODEL == 'XL330-W288':
                dxl_present_current = dxl_present_current * 2.69 / 1000
                if dxl_present_current < - 0.00269 * 4:
                    dxl_present_torque = (dxl_present_current + 0.00269 * 4) / 0.578
                elif dxl_present_current > 0.00269:
                    dxl_present_torque = (dxl_present_current - 0.00269) / 0.578
                else:
                    dxl_present_torque = 0
            torque_list.append(dxl_present_torque)
        return np.array(torque_list)

    def set_profile_velocity(self, dxl_profile_velocity):
        param_profile_velocity = []
        for item in dxl_profile_velocity:
            param_profile_velocity.append([DXL_LOBYTE(DXL_LOWORD(item)),
                                          DXL_HIBYTE(DXL_LOWORD(item)),
                                          DXL_LOBYTE(DXL_HIWORD(item)),
                                          DXL_HIBYTE(DXL_HIWORD(item))])
        for i, item in enumerate(self.DXL_ID):
            dxl_addparam_result = self.groupSyncWriteProfileVelocity.addParam(item, param_profile_velocity[i])
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncWrite addparam failed" % item)
        dxl_comm_result = self.groupSyncWriteProfileVelocity.txPacket()
        # Clear syncwrite parameter storage
        self.groupSyncWriteProfileVelocity.clearParam()
        return dxl_comm_result

    def set_profile_acceleration(self, dxl_profile_acceleration):
        param_profile_acceleration = []
        for item in dxl_profile_acceleration:
            param_profile_acceleration.append([DXL_LOBYTE(DXL_LOWORD(item)),
                                          DXL_HIBYTE(DXL_LOWORD(item)),
                                          DXL_LOBYTE(DXL_HIWORD(item)),
                                          DXL_HIBYTE(DXL_HIWORD(item))])
        for i, item in enumerate(self.DXL_ID):
            dxl_addparam_result = self.groupSyncWriteProfileAcceleration.addParam(item, param_profile_acceleration[i])
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncWrite addparam failed" % item)
        dxl_comm_result = self.groupSyncWriteProfileAcceleration.txPacket()
        # Clear syncwrite parameter storage
        self.groupSyncWriteProfileAcceleration.clearParam()
        return dxl_comm_result

    def set_operating_mode(self, flag):
        if flag == 'p':  # p is Position Control Mode, and t is Torque Control Mode
            for i in self.DXL_ID:
                dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, i,
                                                                               self.ADDR_OPERATING_MODE, 3)
        if flag == 't':
            for i in self.DXL_ID:
                dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, i,
                                                                               self.ADDR_OPERATING_MODE, 0)
        if flag == 'v':
            for i in self.DXL_ID:
                dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, i,
                                                                               self.ADDR_OPERATING_MODE, 1)
        return dxl_comm_result

    def set_position(self, dxl_goal_position):
        dxl_goal_position = [int(i * 4096 / 2 / math.pi) + 2047 for i in dxl_goal_position]
        param_goal_position = []
        for item in dxl_goal_position:
            param_goal_position.append([DXL_LOBYTE(DXL_LOWORD(item)),
                                   DXL_HIBYTE(DXL_LOWORD(item)),
                                   DXL_LOBYTE(DXL_HIWORD(item)),
                                   DXL_HIBYTE(DXL_HIWORD(item))])
        for i, item in enumerate(self.DXL_ID):
            dxl_addparam_result = self.groupSyncWritePosition.addParam(item, param_goal_position[i])
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncWrite addparam failed" % item)
        dxl_comm_result = self.groupSyncWritePosition.txPacket()
        # Clear syncwrite parameter storage
        self.groupSyncWritePosition.clearParam()
        return dxl_comm_result

    def set_velocity(self, dxl_goal_velocity):
        param_goal_velocity = []
        for item in dxl_goal_velocity:
            param_goal_velocity.append([DXL_LOBYTE(DXL_LOWORD(item)),
                                        DXL_HIBYTE(DXL_LOWORD(item)),
                                        DXL_LOBYTE(DXL_HIWORD(item)),
                                        DXL_HIBYTE(DXL_HIWORD(item))])
        for i, item in enumerate(self.DXL_ID):
            dxl_addparam_result = self.groupSyncWriteVelocity.addParam(item, param_goal_velocity[i])
            if dxl_addparam_result != True:
                print("[ID:%03d] groupSyncWrite addparam failed" % item)
        dxl_comm_result = self.groupSyncWriteVelocity.txPacket()
        # Clear syncwrite parameter storage
        self.groupSyncWriteVelocity.clearParam()
        return dxl_comm_result

    def set_torque(self, dxl_goal_torque):
        if self.MODEL == 'XM430-W350':
            dxl_goal_current = []
            for item in dxl_goal_torque:
                if item >= 0:
                    dxl_goal_current.append(int((0.578 * item + 0.00269) * 1000 / 2.69))
                else:
                    dxl_goal_current.append(int((0.578 * item - 0.00269 * 4) * 1000 / 2.69))
        elif self.MODEL == 'XH540-W270':
            dxl_goal_current = []
            for item in dxl_goal_torque:
                if item >= 0:
                    dxl_goal_current.append(int((0.578 * item + 0.00269) * 1000 / 2.69))
                else:
                    dxl_goal_current.append(int((0.578 * item - 0.00269 * 4) * 1000 / 2.69))
        elif self.MODEL == 'XL330-W288':
            dxl_goal_current = []
            for item in dxl_goal_torque:
                if item >= 0:
                    dxl_goal_current.append(int((0.578 * item + 0.00269) * 1000 / 2.69))
                else:
                    dxl_goal_current.append(int((0.578 * item - 0.00269 * 4) * 1000 / 2.69))
            param_goal_current = []
            for item in dxl_goal_current:
                param_goal_current.append([DXL_LOBYTE(item),
                                        DXL_HIBYTE(item)])
            for i, item in enumerate(self.DXL_ID):
                dxl_addparam_result = self.groupSyncWriteCurrent.addParam(item, param_goal_current[i])
                if dxl_addparam_result != True:
                    print("[ID:%03d] groupSyncWrite addparam failed" % item)
            dxl_comm_result = self.groupSyncWriteCurrent.txPacket()
        # Clear syncwrite parameter storage
        self.groupSyncWriteCurrent.clearParam()
        return dxl_comm_result

    def torque_enable(self):
        for i in self.DXL_ID:
            dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, i,
                                                                           self.ADDR_PRO_TORQUE_ENABLE,
                                                                           1)
            if dxl_comm_result != COMM_SUCCESS:
                print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))
            elif dxl_error != 0:
                print("%s" % self.packetHandler.getRxPacketError(dxl_error))
            else:
                print("Dynamixel#%d torque has been successfully enable" % i)



    def torque_disable(self):
        for i in self.DXL_ID:
            dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, i,
                                                                           self.ADDR_PRO_TORQUE_ENABLE,
                                                                           0)
            if dxl_comm_result != COMM_SUCCESS:
                print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))
            elif dxl_error != 0:
                print("%s" % self.packetHandler.getRxPacketError(dxl_error))
            else:
                print("Dynamixel#%d torque has been successfully disable" % i)


# User Manual
# Example:

# motor_group = DxlAPI([0, 1, 2], 'COM3')
# motor_group.set_operating_mode('p')
# motor_group.torque_enable()
# motor_group.set_position([2047, 2047, 2047])
# pos = motor_group.get_position()
# vel = motor_group.get_velocity()
# print(pos, vel, B-A)
# time.sleep(1)
#
# motor_group.torque_disable()
# motor_group.portHandler.closePort()
