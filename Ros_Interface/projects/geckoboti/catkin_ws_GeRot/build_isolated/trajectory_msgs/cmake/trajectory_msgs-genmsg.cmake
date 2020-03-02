# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trajectory_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Itrajectory_msgs:/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trajectory_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_custom_target(_trajectory_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" ""
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_custom_target(_trajectory_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" "trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_custom_target(_trajectory_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" "std_msgs/Header:geometry_msgs/Transform:geometry_msgs/Twist:geometry_msgs/Vector3:trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_custom_target(_trajectory_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_msgs" "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" "geometry_msgs/Twist:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_cpp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_cpp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_cpp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trajectory_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trajectory_msgs_generate_messages trajectory_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_cpp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_cpp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_cpp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_cpp _trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_msgs_gencpp)
add_dependencies(trajectory_msgs_gencpp trajectory_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_eus(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_eus(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_eus(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trajectory_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trajectory_msgs_generate_messages trajectory_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_eus _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_eus _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_eus _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_eus _trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_msgs_geneus)
add_dependencies(trajectory_msgs_geneus trajectory_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_lisp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_lisp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_lisp(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trajectory_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trajectory_msgs_generate_messages trajectory_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_lisp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_lisp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_lisp _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_lisp _trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_msgs_genlisp)
add_dependencies(trajectory_msgs_genlisp trajectory_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_nodejs(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_nodejs(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_nodejs(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trajectory_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trajectory_msgs_generate_messages trajectory_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_nodejs _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_nodejs _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_nodejs _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_nodejs _trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_msgs_gennodejs)
add_dependencies(trajectory_msgs_gennodejs trajectory_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_py(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_py(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
)
_generate_msg_py(trajectory_msgs
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Twist.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Quaternion.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Vector3.msg;/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/geometry_msgs/msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trajectory_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trajectory_msgs_generate_messages trajectory_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_py _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/JointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_py _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectory.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_py _trajectory_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/gorobots/projects/geckoboti/catkin_ws_GeRot/src/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg" NAME_WE)
add_dependencies(trajectory_msgs_generate_messages_py _trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_msgs_genpy)
add_dependencies(trajectory_msgs_genpy trajectory_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trajectory_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(trajectory_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trajectory_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(trajectory_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trajectory_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(trajectory_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trajectory_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(trajectory_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
