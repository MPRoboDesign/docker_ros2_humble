FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y \
    ros-humble-rviz2 \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-gazebo-ros2-control \
    gedit \
    --no-install-recommends

ENV DISPLAY=$DISPLAY
ENV QT_X11_NO_MITSHM=1

WORKDIR /docker_storage
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
