execute_process(COMMAND "/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
