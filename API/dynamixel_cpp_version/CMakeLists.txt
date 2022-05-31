cmake_minimum_required(VERSION 2.8.9)

PROJECT(Dym)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

link_directories(/usr/local/lib)
include_directories(${PROJECT_SOURCE_DIR}/include )
include_directories(/usr/local/include/)
include_directories(/usr/include/ )


AUX_SOURCE_DIRECTORY(./src DIR_SRCS)

ADD_EXECUTABLE(test ${DIR_SRCS})
target_link_libraries(test dxl_mac_c m)
