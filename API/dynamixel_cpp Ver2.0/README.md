# 1. C++ Package Install

C++ API is re-built with class and dynamixel C++ lib. Here is the installtion instruction.

1. Go to https://github.com/ROBOTIS-GIT/DynamixelSDK, clone this repo.
2. Open the repo in your terminal, then run 
```shell
> cd c++/build/YOUR_PLATFORM
> make
> sudo make install
```
3. Open this repo.
```shell
> cd API/dynamixel_cpp\ Ver2.0
```
Change the *dxl_x64_cpp* in CMakeLists.txt to your lib. If you don't know the lib name of your platform, you may check it in DynamixelSDK/c++/build/YOUR_PLATFORM/Makefile.

4. You can comile this program by:
```shell
> mkdir build && cd build
> cmake ..
> make
> sudo ./test
```
# 2. How to Use

Check the example in *test.cpp*.

First, you need to specify the port, the baudrate of the motor and the ID numbers(as well as the numbers of motor).


```C++
DxlAPI gecko("/dev/ttyUSB0", 3000000, ID, 2);
```

More functions can be found in *dynamixel.cpp* or you can generate a Doxygen file to check it.
