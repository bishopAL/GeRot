from dxl_api import DxlAPI
import time
import math
motor0 = DxlAPI(13, 'COM3')
motor0.set_operating_mode('t')
motor0.torque_enable()
value = motor0.set_torque(0.03)
# motor0.set_position(-math.pi/2)
for i in range(2000):
    c = motor0.get_current()
    v = motor0.get_velocity()
    p = motor0.get_position()
    print(c, v, p)
motor0.torque_disable()
