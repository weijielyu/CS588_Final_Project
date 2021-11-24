# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jsk_topic_tools: 1 messages, 4 services")

set(MSG_I_FLAGS "-Ijsk_topic_tools:/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jsk_topic_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_custom_target(_jsk_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_topic_tools" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_custom_target(_jsk_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_topic_tools" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_custom_target(_jsk_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_topic_tools" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_custom_target(_jsk_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_topic_tools" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" ""
)

get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_custom_target(_jsk_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_topic_tools" "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
)

### Generating Services
_generate_srv_cpp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_cpp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_cpp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_cpp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
)

### Generating Module File
_generate_module_cpp(jsk_topic_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jsk_topic_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jsk_topic_tools_generate_messages jsk_topic_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_cpp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_cpp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_cpp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_cpp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_cpp _jsk_topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_topic_tools_gencpp)
add_dependencies(jsk_topic_tools_gencpp jsk_topic_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_topic_tools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
)

### Generating Services
_generate_srv_eus(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_eus(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_eus(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_eus(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
)

### Generating Module File
_generate_module_eus(jsk_topic_tools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jsk_topic_tools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jsk_topic_tools_generate_messages jsk_topic_tools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_eus _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_eus _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_eus _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_eus _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_eus _jsk_topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_topic_tools_geneus)
add_dependencies(jsk_topic_tools_geneus jsk_topic_tools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_topic_tools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
)

### Generating Services
_generate_srv_lisp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_lisp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_lisp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_lisp(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
)

### Generating Module File
_generate_module_lisp(jsk_topic_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jsk_topic_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jsk_topic_tools_generate_messages jsk_topic_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_lisp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_lisp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_lisp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_lisp _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_lisp _jsk_topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_topic_tools_genlisp)
add_dependencies(jsk_topic_tools_genlisp jsk_topic_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_topic_tools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
)

### Generating Services
_generate_srv_nodejs(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_nodejs(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_nodejs(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_nodejs(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
)

### Generating Module File
_generate_module_nodejs(jsk_topic_tools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jsk_topic_tools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jsk_topic_tools_generate_messages jsk_topic_tools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_nodejs _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_nodejs _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_nodejs _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_nodejs _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_nodejs _jsk_topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_topic_tools_gennodejs)
add_dependencies(jsk_topic_tools_gennodejs jsk_topic_tools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_topic_tools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
)

### Generating Services
_generate_srv_py(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_py(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_py(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
)
_generate_srv_py(jsk_topic_tools
  "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
)

### Generating Module File
_generate_module_py(jsk_topic_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jsk_topic_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jsk_topic_tools_generate_messages jsk_topic_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/msg/TopicInfo.msg" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_py _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/List.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_py _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/Update.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_py _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/ChangeTopic.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_py _jsk_topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_topic_tools/srv/PassthroughDuration.srv" NAME_WE)
add_dependencies(jsk_topic_tools_generate_messages_py _jsk_topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_topic_tools_genpy)
add_dependencies(jsk_topic_tools_genpy jsk_topic_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_topic_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_topic_tools/.+/__init__.pyc?$"
  )
endif()
