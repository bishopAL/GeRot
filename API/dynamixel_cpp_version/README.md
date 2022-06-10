This version is aborted, please use Ver2.0 instead.

# 1. C Package Install

Although this package is for C++, but it still uses Dynamixel C Library. So we need to install the C lib of Dynamixel.
1. Go to https://github.com/ROBOTIS-GIT/DynamixelSDK, clone this repo.
2. Open the repo in your terminal, then
    >cd c/build/YOUR_PLATFORM

run 
    > make
    > 
    > sudo make install
    
3. Open this repo.

   > cd API/dynamixel_cpp_version
   
   Change the *dxl_x64_c* in CMakeLists.txt to your lib. If you don't know the lib name of your platform, you may check it in c/build/YOUR_PLATFORM/Makefile.

4. You can comile this program by:

    > mkdir build && cd build
    > 
    > cmake ..
    > 
    > make
    > 
    > sudo ./test
# 2. How to Use

Check the example in *test.cpp*.

First, you need to specify the port, the baudrate of the motor and the ID numbers(as well as the numbers of motor).


```C
set_port_baudrate_ID("/dev/ttyUSB1", 3000000, ID, num, 2);
```

Then, set PID of position controll or control mode if you want.

Finally, enable the torque of the motor. you can get the position and current feedback via *get_position* and *get_torque*.
