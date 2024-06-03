#!/bin/bash
source /opt/ros/noetic/setup.bash

cd /ros_ws && catkin_make

source /ros_ws/devel/setup.bash

#roslaunch ping_mqtt test.launch
roscore
