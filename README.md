# ros-WRobot-simulation
A Docker image to provide HTML5 VNC interface to access Ubuntu LXDE + ROS including WRobot simulation demo.

## Quick Start
1. Run the docker container and access with port `6080`.
    - Change the `shm-size` value depending on the situation.

```sh
docker run -p 6080:80 --shm-size=512m taiga4112/ros-wrobot-simulation:latest
```

![Image from Gyazo](https://i.gyazo.com/83df180b59929dc363f356d185b87344.gif)

2. Browse [http://127.0.0.1:6080](http://127.0.0.1:6080).

![Image from Gyazo](https://i.gyazo.com/db6ae09b4021a9956594124f1421e754.gif)

3. Open your terminal in VNC viewer.
  - MENU button in lower left -> System Tools -> LXTerminal (or Terminator) 

4. Launch WRobot simulator as follows/.

  - To control the robot with keyboard (`w, a, s, d, q, e, x`), run:
    ```sh
    roslaunch robot simulation.launch tele_control:=true navigate:=false
    ```
    - For controlling the robot with keyboard, please turn your terminal active.
  
  - To test the navigation (move_base package), run :
    ```sh
    roslaunch robot simulation.launch
    ```

  - To test the SLAM including control the robot with keyboard (`w, a, s, d, q, e, x`), run:
    ```sh
    roslaunch robot robot_slam.launch
    ```
    - For controlling the robot with keyboard, please turn your terminal active.

![Image from Gyazo](https://i.gyazo.com/0842f48aa4d9e2fbc8bca90f0e7d35c5.gif)


## How to build

```sh
git clone git@github.com:taiga4112/ros_WRobot_simulation.git
cd ros_WRobot_simulation
docker build -t taiga4112/ros-wrobot-simulation .
```