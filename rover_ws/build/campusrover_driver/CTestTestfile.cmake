# CMake generated Testfile for 
# Source directory: /home/lun/rover_ws/src/campusrover_base/campusrover_driver
# Build directory: /home/lun/rover_ws/build/campusrover_driver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_campusrover_driver_gtest_utest_scurve_profile "/home/lun/rover_ws/build/campusrover_driver/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/lun/rover_ws/build/campusrover_driver/test_results/campusrover_driver/gtest-utest_scurve_profile.xml" "--return-code" "/home/lun/rover_ws/devel/.private/campusrover_driver/lib/campusrover_driver/utest_scurve_profile --gtest_output=xml:/home/lun/rover_ws/build/campusrover_driver/test_results/campusrover_driver/gtest-utest_scurve_profile.xml")
set_tests_properties(_ctest_campusrover_driver_gtest_utest_scurve_profile PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/lun/rover_ws/src/campusrover_base/campusrover_driver/CMakeLists.txt;124;catkin_add_gtest;/home/lun/rover_ws/src/campusrover_base/campusrover_driver/CMakeLists.txt;0;")
add_test(_ctest_campusrover_driver_gtest_utest_trapezoidal_profile "/home/lun/rover_ws/build/campusrover_driver/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/lun/rover_ws/build/campusrover_driver/test_results/campusrover_driver/gtest-utest_trapezoidal_profile.xml" "--return-code" "/home/lun/rover_ws/devel/.private/campusrover_driver/lib/campusrover_driver/utest_trapezoidal_profile --gtest_output=xml:/home/lun/rover_ws/build/campusrover_driver/test_results/campusrover_driver/gtest-utest_trapezoidal_profile.xml")
set_tests_properties(_ctest_campusrover_driver_gtest_utest_trapezoidal_profile PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/lun/rover_ws/src/campusrover_base/campusrover_driver/CMakeLists.txt;129;catkin_add_gtest;/home/lun/rover_ws/src/campusrover_base/campusrover_driver/CMakeLists.txt;0;")
subdirs("gtest")
