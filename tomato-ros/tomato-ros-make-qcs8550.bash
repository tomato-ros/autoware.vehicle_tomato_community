#!/bin/bash

TOMATO_DEV_DIR="$(cd $(dirname $0); pwd)/../"

cd $TOMATO_DEV_DIR

# 完全清理编译缓存和结果
rm -rf $TOMATO_DEV_DIR/build \
       $TOMATO_DEV_DIR/log \
       $HOME/autoware_tomato_community

# 导入项目源码
vcs import src < repositories/autoware.tomato-community.repos

# 编译期间使用 fastrtps
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp

# 导入 ros2 环境变量
source /opt/ros/humble/setup.bash

# 更新 rosdepc
rosdepc update

# 安装项目源码依赖包
rosdepc install -r -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

# 开始全量 release 编译, 部分项目错误也继续编译
colcon build \
--continue-on-error \
--install-base $HOME/autoware_tomato_community \
--cmake-args -DCMAKE_BUILD_TYPE=Release
