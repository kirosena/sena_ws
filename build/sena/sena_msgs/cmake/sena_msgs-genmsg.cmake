# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sena_msgs: 8 messages, 6 services")

set(MSG_I_FLAGS "-Isena_msgs:/home/rizky/sena_ws/src/sena/sena_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sena_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" "std_msgs/Header:sena_msgs/PPoint"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" "std_msgs/Header:sena_msgs/PPoint:sena_msgs/BallInfo"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" "sena_msgs/Velocity:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" "sena_msgs/Velocity:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_custom_target(_sena_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_msgs" "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" "geometry_msgs/Pose2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_msg_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)

### Generating Services
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)
_generate_srv_cpp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
)

### Generating Module File
_generate_module_cpp(sena_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sena_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sena_msgs_generate_messages sena_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_cpp _sena_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_msgs_gencpp)
add_dependencies(sena_msgs_gencpp sena_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_msg_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)

### Generating Services
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)
_generate_srv_eus(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
)

### Generating Module File
_generate_module_eus(sena_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sena_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sena_msgs_generate_messages sena_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_eus _sena_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_msgs_geneus)
add_dependencies(sena_msgs_geneus sena_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_msg_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)

### Generating Services
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)
_generate_srv_lisp(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
)

### Generating Module File
_generate_module_lisp(sena_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sena_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sena_msgs_generate_messages sena_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_lisp _sena_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_msgs_genlisp)
add_dependencies(sena_msgs_genlisp sena_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_msg_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)

### Generating Services
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)
_generate_srv_nodejs(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
)

### Generating Module File
_generate_module_nodejs(sena_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sena_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sena_msgs_generate_messages sena_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_nodejs _sena_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_msgs_gennodejs)
add_dependencies(sena_msgs_gennodejs sena_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg;/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_msg_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)

### Generating Services
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)
_generate_srv_py(sena_msgs
  "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
)

### Generating Module File
_generate_module_py(sena_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sena_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sena_msgs_generate_messages sena_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Angle.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/BallHandle.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Shoot.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/Floats_array.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_msgs/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(sena_msgs_generate_messages_py _sena_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_msgs_genpy)
add_dependencies(sena_msgs_genpy sena_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sena_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sena_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sena_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sena_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sena_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sena_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sena_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sena_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sena_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sena_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
