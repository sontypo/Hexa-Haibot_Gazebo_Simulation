# CMake generated Testfile for 
# Source directory: /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests
# Build directory: /home/saun/6legged_robot/build/velodyne/velodyne_pointcloud/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_velodyne_pointcloud_gtest_test_calibration "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/gtest-test_calibration.xml" "--return-code" "/home/saun/6legged_robot/devel/lib/velodyne_pointcloud/test_calibration --gtest_output=xml:/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/gtest-test_calibration.xml")
set_tests_properties(_ctest_velodyne_pointcloud_gtest_test_calibration PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;11;catkin_add_gtest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_node_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_node_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_node_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_node_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_node_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;39;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_nodelet_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_nodelet_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_nodelet_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;40;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_node_32e_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_node_32e_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_node_32e_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_node_32e_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_node_32e_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;41;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_32e_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_nodelet_32e_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_nodelet_32e_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_nodelet_32e_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_32e_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;42;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_node_64e_s2.1_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_node_64e_s2.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_node_64e_s2.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_node_64e_s2.1_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_node_64e_s2.1_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;43;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_64e_s2.1_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_nodelet_64e_s2.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_nodelet_64e_s2.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_nodelet_64e_s2.1_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_64e_s2.1_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;44;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_node_vlp16_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_node_vlp16_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_node_vlp16_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_node_vlp16_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_node_vlp16_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;45;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_vlp16_hz.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_transform_nodelet_vlp16_hz.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_transform_nodelet_vlp16_hz.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/transform_nodelet_vlp16_hz.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_transform_nodelet_vlp16_hz.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;46;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_rostest_tests_two_nodelet_managers.test "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/rostest-tests_two_nodelet_managers.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud --package=velodyne_pointcloud --results-filename tests_two_nodelet_managers.xml --results-base-dir \"/home/saun/6legged_robot/build/test_results\" /home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/two_nodelet_managers.test ")
set_tests_properties(_ctest_velodyne_pointcloud_rostest_tests_two_nodelet_managers.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;47;add_rostest;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")
add_test(_ctest_velodyne_pointcloud_roslaunch-check_.._launch "/home/saun/6legged_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/roslaunch-check_.._launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/saun/6legged_robot/build/test_results/velodyne_pointcloud" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/saun/6legged_robot/build/test_results/velodyne_pointcloud/roslaunch-check_.._launch.xml\" \"/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/../launch\" ")
set_tests_properties(_ctest_velodyne_pointcloud_roslaunch-check_.._launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;50;roslaunch_add_file_check;/home/saun/6legged_robot/src/velodyne/velodyne_pointcloud/tests/CMakeLists.txt;0;")