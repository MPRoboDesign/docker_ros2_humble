# docker_ros2_humble
A Docker Image to run ROS2 Humble with RVIZ2 and Gazebo. 

## Note:
- The Image is tested in Ubuntu 20.04.

## 1. Installation
- Open a terminal and navigate to location where you want to store the docker.
- Git clone the container using following command:
```
git clone https://github.com/MPRoboDesign/docker_ros2_humble.git
```
- Build the Docker Container using following command:
```
docker build -t ros2_humble .
```
- Here the Docker Container is named as ros2_humble. You can also replace it with your prefered name.
- Finally run the following command to avoid some GUI error:
```
xhost +local:docker
```
- Now the Installation process is completed.

## 2. Run the Container
- **Assumption:** The terminal is open and is navigated to the local repo.
- Run the docker container using following command:
```
docker run -it --rm --net=host --env DISPLAY=$DISPLAY --volume="/tmp/.X11-unix:/tmp/.X11-unix:ro" --volume="$(pwd)/docker_storage:/docker_storage" ros2_humble bash
```
- By running the above command, you will enter the Docker Container. 

## 3. About this Docker Image
- RVIZ2 is working.
- Gazebo is Working.
- RQT is working.
- For editing, Gedit is added. No other Editor is available.
