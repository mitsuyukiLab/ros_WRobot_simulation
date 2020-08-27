# ros-WRobot-simulation
A Docker image to provide HTML5 VNC interface to access Ubuntu LXDE + ROS including WRobot simulation demo.

## Quick Start
1. Run the docker container and access with port `6080`.
    - Change the `shm-size` value depending on the situation.

```sh
docker run -p 6080:80 --shm-size=512m taiga4112/ros_WRobot_test:latest
```

2. Browse [http://127.0.0.1:6080](http://127.0.0.1:6080).

![Image from Gyazo](https://i.gyazo.com/ab43ab3f6dc10b5186416499e49d0bbe.jpg)


## How to build

```sh
git clone git@github.com:taiga4112/ros-WRobot-simulation-demo.git
cd ros-WRobot-simulation-demo
docker build -t taiga4112/ros-WRobot-simulation-demo .
```