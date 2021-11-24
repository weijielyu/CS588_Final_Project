# Install script for directory: /home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wlyu/ROS_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_recognition_utils" TYPE FILE FILES "/home/wlyu/ROS_workspace/devel/include/jsk_recognition_utils/PoseArrayToPoseConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_recognition_utils" TYPE FILE FILES "/home/wlyu/ROS_workspace/devel/include/jsk_recognition_utils/PolygonArrayToPolygonConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wlyu/ROS_workspace/devel/lib/python3/dist-packages/jsk_recognition_utils/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/jsk_recognition_utils" TYPE DIRECTORY FILES "/home/wlyu/ROS_workspace/devel/lib/python3/dist-packages/jsk_recognition_utils/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/catkin_generated/installspace/jsk_recognition_utils.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_utils/cmake" TYPE FILE FILES
    "/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/catkin_generated/installspace/jsk_recognition_utilsConfig.cmake"
    "/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/catkin_generated/installspace/jsk_recognition_utilsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_utils" TYPE FILE FILES "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wlyu/ROS_workspace/devel/lib/libjsk_recognition_utils.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so"
         OLD_RPATH "/opt/ros/noetic/lib:/home/wlyu/ROS_workspace/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_recognition_utils.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_recognition_utils" TYPE DIRECTORY FILES "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/include/jsk_recognition_utils/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_utils" TYPE DIRECTORY FILES
    "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/node_scripts"
    "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/sample"
    "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/test"
    USE_SOURCE_PERMISSIONS)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_recoginition/jsk_recognition_utils/python/jsk_recognition_utils/cmake_install.cmake")

endif()

