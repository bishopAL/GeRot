#!/usr/bin/python
import serial
import rospy
from std_msgs.msg import Float32MultiArray

ser = serial.Serial('/dev/ARD', 115200, timeout=0.1)
pub = rospy.Publisher('/ir_topic', Float32MultiArray, queue_size=10)
rospy.init_node('ir_pubber', anonymous=True)
rate = rospy.Rate(100) # 10hz
    
while not rospy.is_shutdown():
    response = ser.readline()
    if response != b'':
        response = str(response)
        data = response.split(',')
        #data[1] = data[1][:-4]
        data = [float(i) for i in data]
        pub.publish(Float32MultiArray(data=data))
    rate.sleep()
    
ser.close()
