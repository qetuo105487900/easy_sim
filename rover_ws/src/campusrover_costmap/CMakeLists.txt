cmake_minimum_required(VERSION 3.0.2)
project(campusrover_costmap)

add_compile_options(-std=c++14)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  sensor_msgs
  pcl_conversions
  pcl_ros
  nav_msgs
  laser_geometry
  nav_msgs
  tf2_ros
)

find_package (Eigen3 REQUIRED NO_MODULE)
find_package (OpenCV REQUIRED)
find_package (PCL REQUIRED)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES campusrover_costmap
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_library(local_costmap_lib src/local_costmap.cpp)
target_link_libraries( local_costmap_lib
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
  ${PCL_COMMON_LIBRARIES})

add_executable(local_costmap_node src/local_costmap_node.cpp)
target_link_libraries( local_costmap_node
  local_costmap_lib                 
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
  ${PCL_COMMON_LIBRARIES} )

add_executable(laser_to_pointcloud2 src/laser_to_pointcloud2.cpp)
target_link_libraries(laser_to_pointcloud2 ${catkin_LIBRARIES} )

add_executable(filtered_scan_no_mirror_node src/filtered_scan_no_mirror_node.cpp)
target_link_libraries(filtered_scan_no_mirror_node ${catkin_LIBRARIES} )

add_executable(campusrover_global_costmap src/campusrover_global_costmap.cpp)
target_link_libraries(campusrover_global_costmap ${catkin_LIBRARIES} )

add_executable(map_data src/map_data.cpp)
target_link_libraries(map_data ${catkin_LIBRARIES} )

add_executable(merged_costmap_node src/merged_costmap_node.cpp)
target_link_libraries(merged_costmap_node ${catkin_LIBRARIES} )

add_executable(portion_costmap_node src/portion_costmap_node.cpp)
target_link_libraries(portion_costmap_node ${catkin_LIBRARIES} )

add_executable(lidar_frame_id src/lidar_frame_id.cpp)
target_link_libraries(lidar_frame_id ${catkin_LIBRARIES} )

add_executable(campusrover_local_costmap src/campusrover_local_costmap.cpp)
target_link_libraries(campusrover_local_costmap ${catkin_LIBRARIES} )

add_executable(global_costmap_node 
  src/global_costmap_node.cpp
  src/global_costmap.cpp)

target_link_libraries( global_costmap_node
  ${catkin_LIBRARIES}
)

