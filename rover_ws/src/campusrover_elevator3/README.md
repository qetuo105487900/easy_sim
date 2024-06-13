# campusrover_elevator2

## elevator strategy step
1. Jetson_Orin$ roslaunch button_tracker elevator_object_detection.launch
2. roslaunch campusrover_elevator2 elevator_status_controller.launch
3. roslaunch elevator_caller run.launch
4. rosservice call /zero_return "flag: false"
5. rosservice call /elevator_controller "{enable_multi: false, elevator_id: 'e0', building: 'itc', init_floor: 3, target_floor: 1}"
- campusrover_msgs/ElevatorControlInterface
  - bool enable_multi : true -> multi  false -> single
  - string elevator_id : e0 -> single_left  e1 -> single_right
  - string building : building (ex : itc chgh csl)
  - int8 init_floor : initial floor (ex : 3)
  - int8 target_floor : target floor (ex : 1)

## Package Detail
- campusrover_elevator2 : main strategy(not include press button)
- elevator_caller : press button strategy(moving to panel -> button recognize -> press button )
- visual_servoing -> moving yz table and robot

## Depended Packages (IC LAB AMR Team)
- campusrover_base
  - firmware -> pressure_sensor_code : pressure data
- campusrover_ai
  - elevator_panel_detection;yolo_ros: panel detection
  - elevator_button_recognition: button detection
- campusrover_arm
  - campusrover_arm_moveit_config : moveit
  - campusrover_dynamixel : AX12 motor
  - firmware->table_v3 : yz table
- campusrover_mpc
  - campusrover_mpc : elevator moving strategy


## Depended Packages (Third Party)
- VISP: [installation instruction](http://wiki.ros.org/vision_visp)