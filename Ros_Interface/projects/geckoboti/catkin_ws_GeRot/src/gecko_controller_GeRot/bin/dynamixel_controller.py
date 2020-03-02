#!/usr/bin/env python
import rospy
from dynamixel.mt_dxl import DxlAPI
from std_msgs.msg import Float32MultiArray

def callback(data):
    msg = data.data
    msg = [item for i,item in enumerate(msg) if i%2==1]
    motor_group.set_position(msg)
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/multi_joint_command", Float32MultiArray, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

motor_group = DxlAPI(range(12), '/dev/ROB', 4000000)
motor_group.set_operating_mode('p')
motor_group.torque_enable()

if __name__ == '__main__':
    listener()
