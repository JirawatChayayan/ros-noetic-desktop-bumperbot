FROM osrf/ros:noetic-desktop-full
ENV DISPLAY=host.docker.internal:0.0


RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip
RUN apt install -y dos2unix
RUN apt install -y nano
RUN apt install -y terminator

COPY ./execute .
RUN /bin/bash -c "chmod +x run_ros.sh && dos2unix run_ros.sh"

WORKDIR /ros_ws
COPY ./ros_package ./src

RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc
RUN echo "source /ros_ws/devel/setup.bash" >> /root/.bashrc
EXPOSE 11311
CMD ["bash","../run_ros.sh"]
