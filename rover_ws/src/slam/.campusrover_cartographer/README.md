# Campusrover_cartographer 

## Mapping Online
``` bash
roslaunch campusrover_cartographer campusrover_2d_mapping_odom.launch
# Stop Collect Data
rosservice call /finish_trajectory 0
# Save .pbstream map manual
rosservice call /write_state "filename: '/home/lun/campusrover_new_map/itc/3F_0628.pbstream'"
# Save .pgm map (Option)
rosrun map_server map_saver --occ 50 --free 10 -f ~/campusrover_maps/3F map:=/map
# Save yaml and pgm (Option)
rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=/home/lun/campusrover_new_map/itc/($ yaml and pgm name) -pbstream_filename=/home/lun/campusrover_new_map/itc/3F.pbstream -resolution=0.02

```

## Mapping Offline
In `mapping_2d_offline.launch`, modify `bag_filenames` and `configuration_basenames` based on your bag file and sensor configuration. The .pbstream map is stored in the same folder with .bag file by default.
``` bash
# Run offline map builder
roslaunch campusrover_cartographer mapping_offline.launch
# Save .pgm map (Option)
roslaunch campusrover_cartographer assets_write_ros_map.launch
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