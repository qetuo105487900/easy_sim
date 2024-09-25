# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "campusrover_msgs: 36 messages, 36 services")

set(MSG_I_FLAGS "-Icampusrover_msgs:/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Ivision_msgs:/opt/ros/noetic/share/vision_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(campusrover_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" "campusrover_msgs/BboxAngle:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:campusrover_msgs/ButtonPose:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Pose2D:vision_msgs/BoundingBox2D:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/String:geometry_msgs/PoseArray:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" "geometry_msgs/Point:campusrover_msgs/ElevatorInfo:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:campusrover_msgs/ElevatorPose:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" "geometry_msgs/Quaternion:std_msgs/Int16:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/String:geometry_msgs/PoseStamped:std_msgs/Header:campusrover_msgs/PoseWithId"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" "geometry_msgs/Quaternion:std_msgs/Int16:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/String:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" "campusrover_msgs/RLObservation:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Vector3:campusrover_msgs/TrackedObstacle:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" "std_msgs/Empty"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" "std_msgs/Empty"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" "campusrover_msgs/ElevatorInfo:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:campusrover_msgs/ElevatorInfoArray"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" "std_msgs/String:std_msgs/Bool"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" "vision_msgs/Detection2D:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:sensor_msgs/Image:geometry_msgs/Pose2D:vision_msgs/ObjectHypothesisWithPose:vision_msgs/Detection2DArray:vision_msgs/BoundingBox2D:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/TransformStamped:geometry_msgs/Vector3:campusrover_msgs/Room:geometry_msgs/Transform:campusrover_msgs/RoomConnected:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" "geometry_msgs/Quaternion:geometry_msgs/TransformStamped:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:campusrover_msgs/RoomConnected:campusrover_msgs/NodeInfo"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" "geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Bool"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:nav_msgs/Path:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" "campusrover_msgs/State"
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" ""
)

get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_custom_target(_campusrover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "campusrover_msgs" "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)

### Generating Services
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_cpp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
)

### Generating Module File
_generate_module_cpp(campusrover_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(campusrover_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(campusrover_msgs_generate_messages campusrover_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_cpp _campusrover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(campusrover_msgs_gencpp)
add_dependencies(campusrover_msgs_gencpp campusrover_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS campusrover_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)

### Generating Services
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_eus(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
)

### Generating Module File
_generate_module_eus(campusrover_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(campusrover_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(campusrover_msgs_generate_messages campusrover_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_eus _campusrover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(campusrover_msgs_geneus)
add_dependencies(campusrover_msgs_geneus campusrover_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS campusrover_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)

### Generating Services
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_lisp(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
)

### Generating Module File
_generate_module_lisp(campusrover_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(campusrover_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(campusrover_msgs_generate_messages campusrover_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_lisp _campusrover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(campusrover_msgs_genlisp)
add_dependencies(campusrover_msgs_genlisp campusrover_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS campusrover_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)

### Generating Services
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_nodejs(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
)

### Generating Module File
_generate_module_nodejs(campusrover_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(campusrover_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(campusrover_msgs_generate_messages campusrover_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_nodejs _campusrover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(campusrover_msgs_gennodejs)
add_dependencies(campusrover_msgs_gennodejs campusrover_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS campusrover_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_msg_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)

### Generating Services
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg;/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv"
  "${MSG_I_FLAGS}"
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)
_generate_srv_py(campusrover_msgs
  "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
)

### Generating Module File
_generate_module_py(campusrover_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(campusrover_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(campusrover_msgs_generate_messages campusrover_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ArmTablePoseStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/BboxAngleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonCommand.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoses.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ButtonPoseStamped.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/CANbus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ChargerStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DestinationWithMpc.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorResult.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/DoorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorControlStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorInfoArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPose.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorPoseArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/ElevatorStrategyStep.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Encode.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/FloorStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/HmiStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/InDemoStatus.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/LocationRoom.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/MPCParameter.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/NodeInfo.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/PoseWithId.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservation.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RLObservationArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Room.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/RoomConnected.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/State.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacle.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/TrackedObstacleArray.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/Trip.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/msg/WorkingFloor.msg" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionCharging.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ActionParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmAction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmMovePose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTableHomeReturn.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ArmTablePosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/BubbleMPC.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonParking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonRecognize.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ButtonTracking.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ChooseMode.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/demoPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveProfile.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/DriveStatus.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorControlInterface.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorInfoReader.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ElevatorStatusChecker.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/EncoderCount.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ImgLabel.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/InitFloor.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerLauncher.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/LocalizerSwitch.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapClosestLocation.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapInitPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapLoadInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/MapPointPose.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/ModuleInfo.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PlannerFunction.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/PressButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/RoutingPath.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/StatePlan.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/TargetButton.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/VSParameter.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lun/rover_ws/src/campusrover_base/campusrover_msgs/srv/YZPosition.srv" NAME_WE)
add_dependencies(campusrover_msgs_generate_messages_py _campusrover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(campusrover_msgs_genpy)
add_dependencies(campusrover_msgs_genpy campusrover_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS campusrover_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/campusrover_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(campusrover_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(campusrover_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(campusrover_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET vision_msgs_generate_messages_cpp)
  add_dependencies(campusrover_msgs_generate_messages_cpp vision_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(campusrover_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/campusrover_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(campusrover_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(campusrover_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(campusrover_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET vision_msgs_generate_messages_eus)
  add_dependencies(campusrover_msgs_generate_messages_eus vision_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(campusrover_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/campusrover_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(campusrover_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(campusrover_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(campusrover_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET vision_msgs_generate_messages_lisp)
  add_dependencies(campusrover_msgs_generate_messages_lisp vision_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(campusrover_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/campusrover_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(campusrover_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(campusrover_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(campusrover_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET vision_msgs_generate_messages_nodejs)
  add_dependencies(campusrover_msgs_generate_messages_nodejs vision_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(campusrover_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/campusrover_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(campusrover_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(campusrover_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(campusrover_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET vision_msgs_generate_messages_py)
  add_dependencies(campusrover_msgs_generate_messages_py vision_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(campusrover_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
