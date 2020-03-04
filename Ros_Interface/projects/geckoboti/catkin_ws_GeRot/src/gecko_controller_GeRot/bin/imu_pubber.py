#!/usr/bin/python
import smbus
import math
import rospy
from std_msgs.msg import Float32MultiArray

# Power management registers
power_mgmt_1 = 0x6b
power_mgmt_2 = 0x6c

def read_byte(adr):
    return bus.read_byte_data(address, adr)

def read_word(adr):
    high = bus.read_byte_data(address, adr)
    low = bus.read_byte_data(address, adr+1)
    val = (high << 8) + low 
    return val 
def read_word_2c(adr): 
    val = read_word(adr) 
    if (val >= 0x8000):
        return -((65535 - val) + 1)
    else:
        return val

def dist(a,b):
    return math.sqrt((a*a)+(b*b))

def get_y_rotation(x,y,z):
    radians = math.atan2(x, dist(y,z))
    return -math.degrees(radians)

def get_x_rotation(x,y,z):
    radians = math.atan2(y, dist(x,z))
    return math.degrees(radians)

bus = smbus.SMBus(1) # or bus = smbus.SMBus(1) for Revision 2 boards
address = 0x68       # This is the address value read via the i2cdetect command
pub = rospy.Publisher('/imu_topic', Float32MultiArray, queue_size=10)
rospy.init_node('imu_pubber', anonymous=True)
rate = rospy.Rate(100) # 10hz
# Now wake the 6050 up as it starts in sleep mode
bus.write_byte_data(address, power_mgmt_1, 0)

for i in range(3000):
    try:
        x = read_word_2c(0x43)
        y = read_word_2c(0x45)
        z = read_word_2c(0x47)
        pub.publish(Float32MultiArray(data=[x, y, z]))
        print(x,y,z)
        rate.sleep()
    except IOError:
        rate.sleep()



