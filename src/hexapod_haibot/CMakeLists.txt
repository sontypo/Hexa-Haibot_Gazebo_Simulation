cmake_minimum_required(VERSION 3.0.2)
project(hexapod_haibot)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  controller_manager
  gazebo_ros
  geometry_msgs
  joint_state_controller
  robot_state_publisher
  roscpp
  rospy
  sensor_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS 
    sensor_msgs
    gazebo_ros 
    hector_gazebo_plugins
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

catkin_install_python(PROGRAMS scripts/walker.py scripts/walker_demo.py scripts/pose_saving.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
