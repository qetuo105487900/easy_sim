# Install script for directory: /home/lun/rover_ws/src/campusrover_base/campusrover_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lun/rover_ws/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE PROGRAM FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE PROGRAM FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/setup.bash;/home/lun/rover_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE FILE FILES
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/setup.bash"
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/setup.sh;/home/lun/rover_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE FILE FILES
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/setup.sh"
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/setup.zsh;/home/lun/rover_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE FILE FILES
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/setup.zsh"
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lun/rover_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lun/rover_ws/install" TYPE FILE FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs/msg" TYPE FILE FILES
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs/srv" TYPE FILE FILES
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
    "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs/cmake" TYPE FILE FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/campusrover_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lun/rover_ws/devel/.private/campusrover_msgs/include/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lun/rover_ws/devel/.private/campusrover_msgs/share/roseus/ros/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lun/rover_ws/devel/.private/campusrover_msgs/share/common-lisp/ros/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lun/rover_ws/devel/.private/campusrover_msgs/share/gennodejs/ros/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/lun/rover_ws/devel/.private/campusrover_msgs/lib/python3/dist-packages/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/lun/rover_ws/devel/.private/campusrover_msgs/lib/python3/dist-packages/campusrover_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/campusrover_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs/cmake" TYPE FILE FILES "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/campusrover_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs/cmake" TYPE FILE FILES
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/campusrover_msgsConfig.cmake"
    "/home/lun/rover_ws/build/campusrover_msgs/catkin_generated/installspace/campusrover_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/campusrover_msgs" TYPE FILE FILES "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lun/rover_ws/build/campusrover_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lun/rover_ws/build/campusrover_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
