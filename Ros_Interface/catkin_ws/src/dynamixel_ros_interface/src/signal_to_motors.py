#!/usr/bin/env python
import rospy
import time
import sys

from Interface_tool import mt_dxl as mt

from std_msgs.msg import Float32MultiArray as FloatArray32


def velocity_control(data):
	velocity = list(data.data)
	print(type(velocity))
	 # motors.set_velocity(data.data)

def position_control(data):
	 pass
def torque_control(data):
	 pass


def ToMotors(arg):
	rospy.init_node('SignalToMotors', anonymous = True)

	if arg == 'v':
		print('we are in velocity_control')
		motors.torque_disable()
		motors.set_operating_mode('v')
		motors.torque_enable()
		time.sleep(2)
		motors.torque_disable()
		rospy.Subscriber('goal_velocity', FloatArray32, velocity_control)

	if arg == 'p':
		print('we are in position_control')
		motors.torque_disable()
		motors.set_operating_mode('p')
		motors.torque_enable()
		motors.set_position([1024])
		time.sleep(2)
		motors.torque_disable()
		rospy.Subscriber('goal_position', FloatArray32, position_control)

	if arg == 't':
		print('we are in torque_control')
		motors.torque_disable()
		motors.set_operating_mode('t')
		motors.torque_enable()
		rospy.Subscriber('goal_torque', FloatArray32, torque_control)		


	rospy.spin()



if __name__ == '__main__':
	motors = mt.DxlAPI([1], '/dev/ttyUSB0')
	ToMotors(sys.argv[1])
 	# g1.torque_enable()
 	# time.sleep(5)
 	# g1.torque_disable()
 	# g1.set_operating_mode('v')
 	# g1.torque_enable()
 	# g1.set_velocity([20])
 	# time.sleep(5)
 	# g1.torque_disable()

	