# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "geometry_msgs: 29 messages, 0 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(geometry_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" "geometry_msgs/Wrench:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" "geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" "geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" "geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" "geometry_msgs/Accel:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" "geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" "geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" "geometry_msgs/Accel:geometry_msgs/AccelWithCovariance:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" "geometry_msgs/Accel:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_custom_target(_geometry_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geometry_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Inertia"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_cpp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(geometry_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(geometry_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(geometry_msgs_generate_messages geometry_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_cpp _geometry_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geometry_msgs_gencpp)
add_dependencies(geometry_msgs_gencpp geometry_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geometry_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)
_generate_msg_eus(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(geometry_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(geometry_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(geometry_msgs_generate_messages geometry_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_eus _geometry_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geometry_msgs_geneus)
add_dependencies(geometry_msgs_geneus geometry_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geometry_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)
_generate_msg_lisp(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(geometry_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(geometry_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(geometry_msgs_generate_messages geometry_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_lisp _geometry_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geometry_msgs_genlisp)
add_dependencies(geometry_msgs_genlisp geometry_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geometry_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)
_generate_msg_nodejs(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(geometry_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(geometry_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(geometry_msgs_generate_messages geometry_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_nodejs _geometry_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geometry_msgs_gennodejs)
add_dependencies(geometry_msgs_gennodejs geometry_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geometry_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)
_generate_msg_py(geometry_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(geometry_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(geometry_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(geometry_msgs_generate_messages geometry_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/WrenchStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Pose2D.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Inertia.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Accel.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseArray.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PointStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/QuaternionStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Wrench.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point32.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PolygonStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovarianceStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3Stamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/AccelWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Point.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TransformStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/PoseStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/TwistWithCovariance.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/InertiaStamped.msg" NAME_WE)
add_dependencies(geometry_msgs_generate_messages_py _geometry_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geometry_msgs_genpy)
add_dependencies(geometry_msgs_genpy geometry_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geometry_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geometry_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(geometry_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geometry_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(geometry_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geometry_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(geometry_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/geometry_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(geometry_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geometry_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(geometry_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
