# Campusrover_cartographer 

## Mapping
``` bash

# Start Mapping
roslaunch campusrover_cartographer campusrover_2d_mapping_odom.launch
# Stop Collect Data
rosservice call /finish_trajectory 0
# Save .pbstream map manual
rosservice call /write_state "filename: '/home/lun/campusrover_maps/itc/(pgm yaml name).pbstream'"
# Save .pgm map
rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=/home/lun/campusrover_maps/itc/(pgm yaml name) -pbstream_filename=/home/lun/campusrover_maps/itc/(pgm yaml name).pbstream -resolution=0.02

```

## Campus Rover Localization bridge debugging 
1. Launch localizer
    ``` bash
    roslaunch campusrover_cartographer start_localizer_bridge.launch debug:=true
    ```
2. Init Map
    ``` bash
    rosservice call /load_map "building: 'itc'
    floor: '3'"
    ```
3. Enable Localization by inti point
    ``` bash
    rosservice call /enable_localizer "mode: 1 
    building: 'itc'
    floor: '3'
    init_point: 'r314'" 
    ```
    <!-- ```bash
    # Enable 2D localizer
    rosservice call /enable_localizer "mode: 2"
    # Enable 3D localizer with initial pose
    rosservice call /enable_localizer "mode: 1
    building: 'vlp16_campus'
    floor: '1'
    init_point: 'itc_o'"

    ``` -->