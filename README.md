## Gero_V1
NOTICE!

Before you using this API, make sure you have installed Python2 or Python3 correctly. If you haven't install anyone of them, I highly recommand you NOT to install Anaconda instead of originnal Python, it makes the environment complex.
In Ubuntu, you should run the codes below in terminnal to reduce the USB latency:


    sudo usermod -aG dialout $USER && echo 1 | sudo tee /sys/bus/usb-serial/devices/ttyUSB0/latency_timer
   


On the other way, you may change it permenantly by doing this:



    sudo nano /etc/udev/rules.d/latency-usb.rules



Add these codes:




    ACTION=="add", SUBSYSTEM=="usb-serial", DRIVER=="ftdi_sio", ATTR{latency_timer}="1" 




Save. Finally:





    sudo udevadm control --reload-rules

    sudo udevadm trigger --action=add



You may check the result like:




    cat /sys/bus/usb-serial/devices/ttyUSB0/latency_timer




In windows, check https://www.instructables.com/id/Lampduino-an-8x8-RGB-Floor-Lamp/, you can find it in step 20.

Then, following the tutorial below:


1. Go to https://github.com/ROBOTIS-GIT/DynamixelSDK, clone this repo.
2. Open the repo in your terminal, then


    cd python
   

If you are using Windows OS, run 


    python setup.py install


If you are using Ubuntu, run 


    sudo python setup.py install


NOTICE: If you have installed anaconda in Ubuntu and you want to use the API with it. You have to specify the "python" above, because if you use "sudo", you will use the originnal python in your system. Maybe you can do it like


    sudo ~/Anaconda3/bin/python3 setup.py install


3. Go to this repo, 


    cd dynamixel-egg
   

then, 


    python setup.py install


now you have installed the driver package, now you may connect your motor to your pc.
4. Check AMC_oneleg_newapi.py, you can specify the parameters in 


    motor0 = DxlAPI(range(3), '/dev/ttyUSB0')


The first parameter is to set the motor's ID, it should like [0,1,2]. The second one is to set the port(in Ubuntu is like '/dev/ttyUSB0', in Windows is like 'COM1'), the third one is to set baurdrate. Make sure you have make these parameters right.

