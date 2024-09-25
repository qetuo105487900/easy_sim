execute_process(COMMAND "/home/lun/rover_ws/build/dynamixel_controllers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lun/rover_ws/build/dynamixel_controllers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
