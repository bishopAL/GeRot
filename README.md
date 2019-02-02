# Dynamixel_API_Python
Before you using this API, make sure you have installed Python2 or Python3 correctly. If you haven't install anyone of them, I highly recommand you NOT to install Anaconda instead of originnal Python.

1. Go to https://github.com/ROBOTIS-GIT/DynamixelSDK, clone this repo.
2. Open the repo in your terminal, then


  ‘cd python’


If you are using Windows OS, run 


  ‘python setup.py install’


If you are using Ubuntu, run 


  ‘sudo python setup.py install’


NOTICE: If you have installed anaconda in Ubuntu and you want to use the API with it. You have to specify the "python" above, because if you use "sudo", you will use the originnal python in your system. Maybe you can do it like


  ‘sudo ~/Anaconda2/bin/python setup.py install’


3. Go to this repo, connect your motor.
4. Check moveto.py, you can specify the parameters in 


  ‘motor0 = DxlAPI(13, 'COM3')’


The first parameter is to set the motor's ID, the second one is to set the port(in Ubuntu is like '/dev/ttyUSB0', in Windows is like 'COM1'), the third one is to set baurdrate. Make sure you have make these parameters right.
5. Finally you can run the "moveto.py" to test, in Windows just run


  ‘python moveto.py’


If in Ubuntu, I recommand you to run it in pycharm, I get some errors when I run it in terminal.     
