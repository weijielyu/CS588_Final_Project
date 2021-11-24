# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "topic_tools;message_runtime;nodelet;std_msgs;std_srvs;roscpp;rostime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljsk_topic_tools".split(';') if "-ljsk_topic_tools" != "" else []
PROJECT_NAME = "jsk_topic_tools"
PROJECT_SPACE_DIR = "/home/wlyu/ROS_workspace/install"
PROJECT_VERSION = "2.2.11"
