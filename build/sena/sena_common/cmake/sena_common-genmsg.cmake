# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sena_common: 8 messages, 0 services")

set(MSG_I_FLAGS "-Isena_common:/home/rizky/sena_ws/src/sena/sena_common/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sena_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" "sena_common/PPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" ""
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" "sena_common/PPoint:std_msgs/Header:sena_common/BallInfo"
)

get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_custom_target(_sena_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sena_common" "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)
_generate_msg_cpp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
)

### Generating Services

### Generating Module File
_generate_module_cpp(sena_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sena_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sena_common_generate_messages sena_common_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_cpp _sena_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_common_gencpp)
add_dependencies(sena_common_gencpp sena_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)
_generate_msg_eus(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
)

### Generating Services

### Generating Module File
_generate_module_eus(sena_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sena_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sena_common_generate_messages sena_common_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_eus _sena_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_common_geneus)
add_dependencies(sena_common_geneus sena_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)
_generate_msg_lisp(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
)

### Generating Services

### Generating Module File
_generate_module_lisp(sena_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sena_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sena_common_generate_messages sena_common_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_lisp _sena_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_common_genlisp)
add_dependencies(sena_common_genlisp sena_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)
_generate_msg_nodejs(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sena_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sena_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sena_common_generate_messages sena_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_nodejs _sena_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_common_gennodejs)
add_dependencies(sena_common_gennodejs sena_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)
_generate_msg_py(sena_common
  "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
)

### Generating Services

### Generating Module File
_generate_module_py(sena_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sena_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sena_common_generate_messages sena_common_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/Angle.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/MotorInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/BallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OdomInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/PPoint.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/OmniVisionInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rizky/sena_ws/src/sena/sena_common/msg/FrontBallInfo.msg" NAME_WE)
add_dependencies(sena_common_generate_messages_py _sena_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sena_common_genpy)
add_dependencies(sena_common_genpy sena_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sena_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sena_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sena_common_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sena_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sena_common_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sena_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sena_common_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sena_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sena_common_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sena_common
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sena_common_generate_messages_py std_msgs_generate_messages_py)
endif()
