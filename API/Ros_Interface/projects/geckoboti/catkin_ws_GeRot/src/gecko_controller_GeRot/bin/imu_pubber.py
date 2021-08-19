#!/usr/bin/python
import smbus
import math
import rospy
from std_msgs.msg import Float32MultiArray
from mpu6050 import mpu6050
from time import sleep
import math


Kp = 100 
Ki = 0.002 
halfT = 0.001 

q0 = 1
q1 = 0
q2 = 0
q3 = 0

exInt = 0
eyInt = 0
ezInt = 0
 
def IMUupdate(ax,ay,az,gx,gy,gz):
    global q0
    global q1
    global q2
    global q3
    global exInt
    global eyInt
    global ezInt

    norm = math.sqrt(ax*ax+ay*ay+az*az)

    ax = ax/norm
    ay = ay/norm
    az = az/norm

    vx = 2*(q1*q3 - q0*q2)
    vy = 2*(q0*q1 + q2*q3)
    vz = q0*q0 - q1*q1 - q2*q2 + q3*q3

    ex = (ay*vz - az*vy)
    ey = (az*vx - ax*vz)
    ez = (ax*vy - ay*vx)

    exInt += ex*Ki
    eyInt += ey*Ki
    ezInt += ez*Ki
    
    gx += Kp*ex + exInt
    gy += Kp*ey + eyInt
    gz += Kp*ez + ezInt

    q0 += (-q1*gx - q2*gy - q3*gz)*halfT
    q1 += (q0*gx + q2*gz - q3*gy)*halfT
    q2 += (q0*gy - q1*gz + q3*gx)*halfT
    q3 += (q0*gz + q1*gy - q2*gx)*halfT

    norm = math.sqrt(q0*q0 + q1*q1 + q2*q2 + q3*q3)
    q0 /= norm
    q1 /= norm
    q2 /= norm
    q3 /= norm

    pitch = math.asin(-2*q1*q3+2*q0*q2)*57.3
    roll = math.atan2(2*q2*q3+2*q0*q1,-2*q1*q1-2*q2*q2+1)*57.3
    yaw = math.atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3)*57.3
    return pitch,roll,yaw

sensor = mpu6050(0x68)
pub = rospy.Publisher('/imu_topic', Float32MultiArray, queue_size=10)
rospy.init_node('imu_pubber', anonymous=True)
rate = rospy.Rate(100) # 10hz
flag = 1
while flag:
    try:
        accel_data = sensor.get_accel_data()
    	gyro_data = sensor.get_gyro_data()
    	pitch, roll, yaw = IMUupdate(accel_data['x'], accel_data['y'], accel_data['z'], gyro_data['x'], gyro_data['y'], gyro_data['z'])
    	data = [pitch, roll, yaw]
	pub.publish(Float32MultiArray(data=data))
        rate.sleep()
    except IOError:
        rate.sleep()
    except KeyboardInterrupt:
        break



