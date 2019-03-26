#!/usr/bin/env python
import rospy
import time

from Interface_tool import mt_dxl as mt

from std_msgs.msg import Float32MultiArray as FloatArray32


def velocity_control(data):
	 pass


def ToMotors():
	rospy.init_node('SignalToMotors', anonymous = True)

	rospy.Subscriber('goal_velocity', FloatArray32, velocity_control)

	rospy.spin()


if __name__ == '__main__':
	g1 = mt.DxlAPI([1], '/dev/ttyUSB0')
	print('hhah')
 	g1.torque_enable()
 	time.sleep(5)
 	g1.torque_disable()
 	g1.set_operating_mode('v')
 	g1.torque_enable()
 	g1.set_velocity([20])
 	time.sleep(5)
 	g1.torque_disable()

	