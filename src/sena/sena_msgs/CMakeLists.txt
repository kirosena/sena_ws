cmake_minimum_required(VERSION 3.0.2)
project(sena_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  std_srvs
  message_generation
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  Angle.msg
  BallInfo.msg
  MotorInfo.msg
  OdomInfo.msg
  OmniVisionInfo.msg
  PPoint.msg
  VelCmd.msg
)

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES geometry_msgs std_msgs
)

catkin_package(
  INCLUDE_DIRS include
#  LIBRARIES sena_msgs
  CATKIN_DEPENDS 
    geometry_msgs 
    roscpp 
    rospy 
    std_msgs 
    std_srvs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

