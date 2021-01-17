#!/usr/bin/env bash

BLUETEXT="\033[1;34m"
REDTEXT="\033[1;31m"
WHITETEXT="\033[0;37m"
GREENTEXT="\033[1;32m"

function ros_env_setup {
    echo -e "$BLUETEXT\nSetting up ROS env"
    set +x
    . /home/user/.bashrc
    #source /opt/ros/kinetic/setup.bash
    #source /home/user/catkin_ws/devel/setup.bash
    set -x
    echo -e "$BLUETEXT\nSetting up ROS env DONE"
    echo -e "\n$WHITETEXT"
}

function go_ros_pkg {
    # This is to avoid all the rubish output of roscd command"
    set +x
    roscd $1
    echo "ROS CD TO $1"
    set -x
}

function start_talos_simulation {

    # We first Setup the ROS_PACKAGE_PATH to make it see both pal and simulations
    set +x
    source /home/user/simulation_ws/devel/setup.bash
    export ROS_PACKAGE_PATH=/opt/pal/erbium/share:/opt/ros/kinetic/share:$ROS_PACKAGE_PATH
    set -x

    echo $ROS_PACKAGE_PATH


    roscd biped_walking_dcm_controller
    pwd

    echo "Starting Talos V2..."
    #roslaunch talos_gazebo talos_gazebo_v2.launch


}


function main {
    set -x
    set -e
    ros_env_setup
    start_talos_simulation
    set +e
    set +x

}

main
