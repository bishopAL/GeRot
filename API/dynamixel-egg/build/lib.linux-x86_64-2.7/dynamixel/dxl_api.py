from dynamixel_sdk import *
import math


class DxlAPI(object):

    def __init__(self, dxl_id=1, device_name='/dev/ttyUSB0', baudrate=4000000):
        self.DXL_ID = dxl_id
        self.BAUDRATE = baudrate
        self.DEVICENAME = device_name
        self.PROTOCOL_VERSION = 2.0
        self.ADDR_OPERATING_MODE = 11  # 1 Byte
        self.ADDR_PRO_TORQUE_ENABLE = 64  # Control table address is different in Dynamixel model   # 1 Byte
        self.ADDR_PRO_GOAL_POSITION = 116  # 4 Bytes
        self.ADDR_PRO_PRESENT_POSITION = 132  # 4 Bytes
        self.ADDR_PRO_GOAL_CURRENT = 102  # 2 Bytes
        self.ADDR_PRO_PRESENT_CURRENT = 126  # 2 Bytes
        self.ADDR_PRO_PRESENT_VELOCITY = 128  # 4 Bytes
        self.portHandler = PortHandler(self.DEVICENAME)
        self.packetHandler = PacketHandler(self.PROTOCOL_VERSION)
        if self.portHandler.openPort():
            print("Succeeded to open the port")
        else:
            print("Failed to open the port")
        if self.portHandler.setBaudRate(self.BAUDRATE):
            print("Succeeded to change the baudrate")
        else:
            print("Failed to change the baudrate")

    def torque_enable(self):
        dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, self.DXL_ID,
                                                                       self.ADDR_PRO_TORQUE_ENABLE, 1)
        if dxl_comm_result != COMM_SUCCESS:
            print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))
        elif dxl_error != 0:
            print("%s" % self.packetHandler.getRxPacketError(dxl_error))
        else:
            print("Dynamixel has been successfully connected")

    def torque_disable(self):
        dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, self.DXL_ID,
                                                                       self.ADDR_PRO_TORQUE_ENABLE, 0)
        if dxl_comm_result != COMM_SUCCESS:
            print("%s" % self.packetHandler.getTxRxResult(dxl_comm_result))
        elif dxl_error != 0:
            print("%s" % self.packetHandler.getRxPacketError(dxl_error))

    def set_operating_mode(self, flag):
        if flag == 'p':  # p is Position Control Mode, and t is Torque Control Mode
            dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, self.DXL_ID,
                                                                           self.ADDR_OPERATING_MODE, 3)
        if flag == 't':
            dxl_comm_result, dxl_error = self.packetHandler.write1ByteTxRx(self.portHandler, self.DXL_ID,
                                                                           self.ADDR_OPERATING_MODE, 0)
        if dxl_error != 0:
            print("%s" % self.packetHandler.getRxPacketError(dxl_error))

    def get_operating_mode(self):
        dxl_present_operating_mode, dxl_comm_result, dxl_error = self.packetHandler.read1ByteTxRx(self.portHandler, self.DXL_ID,
                                                                                                  self.ADDR_OPERATING_MODE)
        print(dxl_present_operating_mode)

    def set_position(self, angle):
        value = int(float(angle + math.pi) / (math.pi * 2) * 4095)
        self.packetHandler.write4ByteTxRx(self.portHandler, self.DXL_ID,
                                                                       self.ADDR_PRO_GOAL_POSITION, value)


    def set_torque(self, torque):
        if torque >= 0:
            current = 0.578 * torque + 0.00269
        else:
            current = 0.578 * torque - 0.00269 * 3
        value = int(current * 1000 / 2.69)
        dxl_comm_result, dxl_error = self.packetHandler.write2ByteTxRx(self.portHandler, self.DXL_ID,
                                                                       self.ADDR_PRO_GOAL_CURRENT, value)

    def get_velocity(self):
        dxl_present_velocity, dxl_comm_result, dxl_error = self.packetHandler.read4ByteTxRx(self.portHandler,
                                                                                                  self.DXL_ID,
                                                                                                  self.ADDR_PRO_PRESENT_VELOCITY)

        if dxl_present_velocity > 0x7fffffff:
            dxl_present_velocity = dxl_present_velocity - 4294967296
        dxl_present_velocity = dxl_present_velocity * 0.229 / 60 * (2 * math.pi)  # 0.229 rev/min to rad/s
        return dxl_present_velocity

    def get_position(self):
        dxl_present_position, dxl_comm_result, dxl_error = self.packetHandler.read4ByteTxRx(self.portHandler,
                                                                                                  self.DXL_ID,
                                                                                                  self.ADDR_PRO_PRESENT_POSITION)
        if dxl_present_position > 0x7fffffff:
            dxl_present_position = dxl_present_position - 4294967296
        dxl_present_position = float(dxl_present_position) / 4095 * (math.pi * 2)
        dxl_present_position = dxl_present_position % (2*math.pi) - math.pi  # relative position:-pi~pi
        return dxl_present_position

    def get_current(self):
        dxl_present_current, dxl_comm_result, dxl_error = self.packetHandler.read2ByteTxRx(self.portHandler,
                                                                                            self.DXL_ID,
                                                                                            self.ADDR_PRO_PRESENT_CURRENT)
        if dxl_present_current > 0x7fff:
            dxl_present_current = dxl_present_current - 65536
        return dxl_present_current
