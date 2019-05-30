from ds4drv.ds4 import DS4
import time
import sys
import threading


def get_ds_status():
    global bt_status
    while 1:
        js_status, bt_status = ds.get_button()


# DS4 initialize
ds = DS4()
bt_status = []
# Threading initialize
th_button = threading.Thread(target=get_ds_status)
th_button.setDaemon(True)
th_button.start()

for i in range(250):
    print(bt_status)
    time.sleep(0.02)
sys.exit()
