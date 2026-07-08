#!/bin/sh

source /etc/profile.d/ros/setup.bash
while [[ $(ros2 topic info /orin/on &> /dev/null; echo $?) -ne 0 ]]; do :; done
ros2 launch as_manager as_manager_launch.py &
ros2 launch mmr_kria_logger mmr_kria_logger_launch.py &
