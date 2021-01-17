# Prometheus

Project to develop an anthropomorphic using Talos robot as base.

## Steps to run on ROS Design Studio

1. Open a terminal tab and type
```
cd /home/user/simulation_ws
source devel/setup.bash
roslaunch realrobotlab main.launch
```
2. Open another terminal tab and type
```
export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```
3. Click on the second terminal tab and use the keys WASDX to control.



