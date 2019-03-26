#! /usr/bin/env python
from dynamixel_sdk import port_handler 

p1 = port_handler.PortHandler('/dev/ttyUSB0')
baud = p1.setBaudRate(4000000)
print(p1.baudrate)