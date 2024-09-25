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

echo_and_run cd "/home/lun/rover_ws/src/campusrover_arm/dynamixel_motor/dynamixel_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lun/rover_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lun/rover_ws/install/lib/python3/dist-packages:/home/lun/rover_ws/build/dynamixel_driver/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lun/rover_ws/build/dynamixel_driver" \
    "/usr/bin/python3" \
    "/home/lun/rover_ws/src/campusrover_arm/dynamixel_motor/dynamixel_driver/setup.py" \
     \
    build --build-base "/home/lun/rover_ws/build/dynamixel_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/lun/rover_ws/install" --install-scripts="/home/lun/rover_ws/install/bin"
