# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_msgs: 27 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg;-Igeometry_msgs:/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" "geometry_msgs/Point32:sensor_msgs/ChannelFloat32:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" "sensor_msgs/RegionOfInterest:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" "sensor_msgs/JoyFeedback"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" "sensor_msgs/RegionOfInterest:std_msgs/Header:sensor_msgs/CameraInfo"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" "sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" "std_msgs/Header:sensor_msgs/NavSatStatus"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" "std_msgs/Header:geometry_msgs/Transform:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" "std_msgs/Header:sensor_msgs/LaserEcho"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_cpp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_cpp(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_gencpp)
add_dependencies(sensor_msgs_gencpp sensor_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)
_generate_msg_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_eus(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_eus(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensor_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_eus _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_geneus)
add_dependencies(sensor_msgs_geneus sensor_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_lisp(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_lisp(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_genlisp)
add_dependencies(sensor_msgs_genlisp sensor_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)
_generate_msg_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_nodejs(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_nodejs(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensor_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_nodejs _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_gennodejs)
add_dependencies(sensor_msgs_gennodejs sensor_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_py(sensor_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_py(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_genpy)
add_dependencies(sensor_msgs_genpy sensor_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sensor_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensor_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sensor_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensor_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sensor_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensor_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sensor_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensor_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sensor_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensor_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
