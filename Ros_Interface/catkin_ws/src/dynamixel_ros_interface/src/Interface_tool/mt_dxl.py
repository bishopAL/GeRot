#! /usr/bin/env python
from dynamixel_sdk import port_handler
from dynamixel_sdk import packet_handler
from dynamixel_sdk import group_sync_read
from dynamixel_sdk import group_sync_write
from dynamixel_sdk.robotis_def import *
import math
import time
import numpy as np


class DxlAPI(object):

    def __init__(self, dxl_id, device_name, baudrate=4000000):
        self.DXL_ID = dxl_id
        self.BAUDRATE = baudrate
        self.DEVICENAME = device_name
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
        self.ADDR_PRO_PRESENT_CURRENT = 126  # 2 Bytes
        self.ADDR_PRO_PRESENT_CURRENT_LENGTH = 2
        self.ADDR_PRO_PRESENT_VELOCITY = 128  # 4 Bytes
        self.ADDR_PRO_PRESENT_VELOCITY_LENGTH = 4
        self.ADDR_PRO_GOAL_VELOCITY = 104  # 4 Bytes
        self.ADDR_PRO_GOAL_VELOCITY_LENGTH = 4
        self.portHandler = port_handler.PortHandler(self.DEVICENAME)
        self.packetHandler = packet_handler.PacketHandler(self.PROTOCOL_VERSION)
        # Initialize GroupSyncWrite
        self.groupSyncWriteCurrent = group_sync_write.GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_CURRENT,
                                                    self.ADDR_PRO_GOAL_CURRENT_LENGTH)
        self.groupSyncWritePosition = group_sync_write.GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_POSITION,
                                                     self.ADDR_PRO_GOAL_POSITION_LENGTH)
        self.groupSyncWriteVelocity = group_sync_write.GroupSyncWrite(self.portHandler, self.packetHandler, self.ADDR_PRO_GOAL_VELOCITY,
                                                     self.ADDR_PRO_GOAL_VELOCITY_LENGTH)

        # Initialize GroupSyncRead
        self.groupSyncReadPosition = group_sync_read.GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PRESENT_POSITION,
                                                   self.ADDR_PRO_PRESENT_POSITION_LENGTH)
        self.groupSyncReadVelocity = group_sync_read.GroupSyncRead(self.portHandler, self.packetHandler, self.ADDR_PRO_PRESENT_VELOCITY,
                                                   self.ADDR_PRO_PRESENT_VELOCITY_LENGTH)
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
        print('Initialize Completed!')

    def get_position(self):
        dxl_comm_result = self.groupSyncReadPosition.txRxPacket()
        position_list = []
        for i in self.DXL_ID:
            dxl_present_position = self.groupSyncReadPosition.getData(i, self.ADDR_PRO_PRESENT_POSITION,
                                                                      self.ADDR_PRO_PRESENT_POSITION_LENGTH)
            if dxl_present_position > 0x7fffffff:
                dxl_present_position -= 4294967296
            dxl_present_position = float(dxl_present_position) / 4095 * (math.pi * 2)
            dxl_present_position = dxl_present_position % (2 * math.pi) - math.pi
            position_list.append(dxl_present_position)
        return np.array(position_list)

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

    def set_position(self, dxl_goal_position):
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
        if dxl_comm_result != COMM_SUCCESS:
            print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))

        # Clear syncwrite parameter storage
        self.groupSyncWritePosition.clearParam()

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
        if dxl_comm_result != COMM_SUCCESS:
            print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))

        # Clear syncwrite parameter storage
        self.groupSyncWriteVelocity.clearParam()

    def set_torque(self, dxl_goal_torque):
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
        if dxl_comm_result != COMM_SUCCESS:
            print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))

        # Clear syncwrite parameter storage
        self.groupSyncWriteCurrent.clearParam()

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
