# 安裝cartographer步驟

## 1. 建campusrover_base
``` bash

mkdir -p rover_ws/src
cd rover_ws/src
git clone --recursive -b origin/luntsai-dev git@github.com:IC-lab-campusrover/campusrover_base.git
cd campusrover_base
./install_chgh.sh

pip install --user requests

```

## 2. 建campusrover_perception
``` bash

cd rover_ws/src
git clone -b origin/luntsai-dev git@github.com:IC-lab-campusrover/campusrover_perception.git
cd rover_ws
catkin build

```

## 3. 建cartographer
``` bash

sudo apt-get update
sudo apt-get install -y python3-wstool python3-rosdep ninja-build stow
mkdir cd campusrover_cartographer_ws
cd campusrover_cartographer_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/cartographer-project/cartographer_ros/master/cartographer_ros.rosinstall
wstool update -t src

sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y

#Cartographer uses the abseil-cpp library that needs to be manually installed using this script:
src/cartographer/scripts/install_abseil.sh
#Due to conflicting versions you might need to uninstall the ROS abseil-cpp using
sudo apt-get remove ros-${ROS_DISTRO}-abseil-cpp
#Build and install.
catkin_make_isolated --install --use-ninja

```

## 4. 在 ~/.bashrc裡面加上 source ~/campusrover_cartographer_ws/devel/setup.bash

## 5. 編譯 campusrover_cartographer_ws
``` bash

cd campusrover_cartographer_ws
catkin build

```