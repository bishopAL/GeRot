cmake_minimum_required(VERSION 2.8.9)

PROJECT(Dym)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include_directories(${PROJECT_SOURCE_DIR}/include )
include_directories(/usr/local/include/)
include_directories(/usr/include/ )
link_directories("/usr/local/lib")
link_directories("/usr/lib")

message("CMAKE_HOST_SYSTEM_NAME: ${CMAKE_HOST_SYSTEM_NAME} ")
message("CMAKE_HOST_SYSTEM_PROCESSOR: ${CMAKE_HOST_SYSTEM_PROCESSOR}")
if(CMAKE_HOST_SYSTEM_NAME MATCHES "Darwin")
set( DYNAMIXELLIB "dxl_mac_cpp")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "x86_64")
set( DYNAMIXELLIB "dxl_x64_cpp")
else()
set( DYNAMIXELLIB "dxl_sbc_cpp")
endif()

AUX_SOURCE_DIRECTORY(./src DIR_SRCS)

ADD_EXECUTABLE(test ${DIR_SRCS})
target_link_libraries(test ${DYNAMIXELLIB})
