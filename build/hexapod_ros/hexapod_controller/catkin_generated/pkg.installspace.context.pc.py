# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "nodelet;roscpp;geometry_msgs;sensor_msgs;std_msgs;hexapod_msgs;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhexapod_controller".split(';') if "-lhexapod_controller" != "" else []
PROJECT_NAME = "hexapod_controller"
PROJECT_SPACE_DIR = "/home/saun/6legged_robot/install"
PROJECT_VERSION = "0.2.0"
