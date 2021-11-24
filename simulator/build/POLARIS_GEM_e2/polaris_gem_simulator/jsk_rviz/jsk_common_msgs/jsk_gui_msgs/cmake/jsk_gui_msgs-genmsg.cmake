# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jsk_gui_msgs: 11 messages, 2 services")

set(MSG_I_FLAGS "-Ijsk_gui_msgs:/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jsk_gui_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" "jsk_gui_msgs/Touch"
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" "jsk_gui_msgs/Action:jsk_gui_msgs/DeviceSensor:std_msgs/Header:jsk_gui_msgs/Touch"
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_custom_target(_jsk_gui_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_gui_msgs" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Services
_generate_srv_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_srv_cpp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Module File
_generate_module_cpp(jsk_gui_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jsk_gui_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jsk_gui_msgs_generate_messages jsk_gui_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_cpp _jsk_gui_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_gui_msgs_gencpp)
add_dependencies(jsk_gui_msgs_gencpp jsk_gui_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_gui_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Services
_generate_srv_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)
_generate_srv_eus(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Module File
_generate_module_eus(jsk_gui_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jsk_gui_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jsk_gui_msgs_generate_messages jsk_gui_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_eus _jsk_gui_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_gui_msgs_geneus)
add_dependencies(jsk_gui_msgs_geneus jsk_gui_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_gui_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Services
_generate_srv_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)
_generate_srv_lisp(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Module File
_generate_module_lisp(jsk_gui_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jsk_gui_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jsk_gui_msgs_generate_messages jsk_gui_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_lisp _jsk_gui_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_gui_msgs_genlisp)
add_dependencies(jsk_gui_msgs_genlisp jsk_gui_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_gui_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Services
_generate_srv_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)
_generate_srv_nodejs(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Module File
_generate_module_nodejs(jsk_gui_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jsk_gui_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jsk_gui_msgs_generate_messages jsk_gui_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_nodejs _jsk_gui_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_gui_msgs_gennodejs)
add_dependencies(jsk_gui_msgs_gennodejs jsk_gui_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_gui_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg"
  "${MSG_I_FLAGS}"
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_msg_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Services
_generate_srv_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)
_generate_srv_py(jsk_gui_msgs
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
)

### Generating Module File
_generate_module_py(jsk_gui_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jsk_gui_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jsk_gui_msgs_generate_messages jsk_gui_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Action.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Touch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/AndroidSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Gravity.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/MultiTouch.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/TouchEvent.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/DeviceSensor.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/Tablet.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/VoiceMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/msg/SlackMessage.msg" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/Query.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_common_msgs/jsk_gui_msgs/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_gui_msgs_generate_messages_py _jsk_gui_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_gui_msgs_genpy)
add_dependencies(jsk_gui_msgs_genpy jsk_gui_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_gui_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_gui_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jsk_gui_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(jsk_gui_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(jsk_gui_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_gui_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jsk_gui_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(jsk_gui_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(jsk_gui_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_gui_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jsk_gui_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(jsk_gui_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(jsk_gui_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_gui_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jsk_gui_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(jsk_gui_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(jsk_gui_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_gui_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jsk_gui_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(jsk_gui_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(jsk_gui_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
