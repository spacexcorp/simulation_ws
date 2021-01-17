#!/bin/sh
# We first Setup the ROS_PACKAGE_PATH to make it see both pal and simulations

source /home/user/simulation_ws/devel/setup.bash
export ROS_PACKAGE_PATH=/opt/pal/erbium/share:/opt/ros/kinetic/share:$ROS_PACKAGE_PATH

echo $ROS_PACKAGE_PATH

echo "Starting Talos V2..."
roslaunch talos_pal_locomotion talos_dcm_walking_controller.launch
