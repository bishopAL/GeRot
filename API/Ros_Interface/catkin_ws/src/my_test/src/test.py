#!/usr/bin/env python
import rospy
import time
from dynamixel_sdk import *

from std_msgs.msg import Float32MultiArray as FloatArray32


def velocity_control(data):
	 pass


def ToMotors():
	rospy.init_node('SignalToMotors', anonymous = True)

	rospy.Subscriber('goal_velocity', FloatArray32, velocity_control)

	rospy.spin()


if __name__ == '__main__':
	PortHandler('/dev/ttyUSB0')
	print('jhah')