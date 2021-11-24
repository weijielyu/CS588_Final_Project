#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wlyu/ROS_workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wlyu/ROS_workspace/install/lib/python3/dist-packages:/home/wlyu/ROS_workspace/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wlyu/ROS_workspace/build" \
    "/usr/bin/python3" \
    "/home/wlyu/ROS_workspace/src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/setup.py" \
     \
    build --build-base "/home/wlyu/ROS_workspace/build/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/wlyu/ROS_workspace/install" --install-scripts="/home/wlyu/ROS_workspace/install/bin"
