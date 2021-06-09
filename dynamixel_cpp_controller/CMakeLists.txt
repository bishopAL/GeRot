cmake_minimum_required( VERSION 2.8 )
project( adhesion_project )

set( CMAKE_BUILD_TYPE "Debug" )
set( CMAKE_CXX_FLAGS_DEBUG "-O0 -Wall -g -ggdb" )

include_directories( "/usr/local/include/eigen3" )

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
LINK_DIRECTORIES(${PROJECT_SOURCE_DIR}/lib)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(test src/admitance_controller.cpp src/dynamixel.cpp)
target_link_libraries(test dxl_sbc_cpp)
