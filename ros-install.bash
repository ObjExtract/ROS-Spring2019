#!/bin/bash
echo precision | sudo -S sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
echo "Installing Turtlebot libraries..."
sudo apt-get install -y ros-kinetic-turtlebot

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

sudo apt-get install -y chrony

sudo apt-get install -y git subversion mercurial

sudo apt-get install -y ros-kinetic-turtlebot-bringup ros-kinetic-openni-* ros-kinetic-openni2-* ros-kinetic-freenect-* ros-kinetic-usb-cam ros-kinetic-audio-common gstreamer1.0-pocketsphinx ros-kinetic-slam-gmapping ros-kinetic-laser-* ros-kinetic-joystick-drivers python-rosinstall ros-kinetic-orocos-kdl ros-kinetic-python-orocos-kdl python-setuptools ros-kinetic-dynamixel-motor-* libopencv-dev python-opencv ros-kinetic-vision-opencv ros-kinetic-depthimage-to-laserscan ros-kinetic-arbotix ros-kinetic-turtlebot-teleop ros-kinetic-navigation git mercurial

sudo apt-get install -y ros-kinetic-jackal-simulator ros-kinetic-jackal-desktop

cd ~/catkin_ws/src
git clone https://github.com/pirobot/rbx1.git
echo "Done!"
