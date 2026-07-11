# tomato-ros-community (番茄ROS机器人社区版)

Autoware 番茄 ROS 机器人社区版是基于 Autoware 自动驾驶开源平台与 ROS/ROS 2 框架打造的社区定制版本，聚焦降低自动驾驶与智能机器人开发门槛，面向科研、教学及快速原型验证场景。其核心优势在于整合 Autoware 完整技术栈（感知、定位、规划、控制等），适配多传感器与主流硬件，优化社区化工具链与文档支持，支持快速集成自定义算法与场景扩展，助力开发者高效实现自主导航、环境感知等核心功能，推动自动驾驶技术的快速落地与生态共建。

## 目的

- 1、专注于适合人人可入手的低速无人驾驶解决方案。
- 2、从开源中来，反馈到开源中去。
- 3、开源自动驾驶技术中文知识科普。

## 支持开发板

| 开发板型号 | 架构/核心 | 综合算力 | 适用场景 | 详细介绍 |
| :-------- | :------- | :------- | :------ | :------ |
| 犀牛派 X1 | ARM/QCS8550 | 48T |自动驾驶原型验证、机器人导航开发。 | https://tomato-ros.github.io/tomato-autoware-community/hardware/aidlux-x1/ |
| J401 | ARM/Jetson Orin NX | -- |自动驾驶原型验证、机器人导航开发。 | 待更新。。。* |

## 如何编译

- humble-tomato-community: 番茄维护的是这个分支哦~

```bash

# 克隆源代码
git clone -b humble-tomato-community git@github.com:tomato-ros/autoware.vehicle_tomato_community.git

# 进入源码目录
cd autoware.vehicle_tomato_community

# 一键初始化环境
./tomato-ros/tomato-ros-env-setup.bash

# 一键编译犀牛派X1(QCS8550)
./tomato-ros/tomato-ros-make-qcs8550.bash

```

## 文档手册

- 番茄：中文社区 [`https://tomato-ros.github.io/tomato-autoware-community/`](https://tomato-ros.github.io/tomato-autoware-community/)
- 番茄：中文文档 [`https://tomato-ros.github.io/autoware-documentation-cn/`](https://tomato-ros.github.io/autoware-documentation-cn/)
- 官方：英文文档 [`https://autowarefoundation.github.io/autoware-documentation/main/home/`](https://autowarefoundation.github.io/autoware-documentation/main/home/)

## 关于作者

- 关于作者：[https://tomato-ros.github.io/tomato-autoware-community/about](https://tomato-ros.github.io/tomato-autoware-community/about)

公众号《番茄ROS机器人》作者，长期致力于 ROS2 与 Autoware 框架下的低速无人驾驶解决方案研发，专注技术实战与经验沉淀，分享低速无人系统开发中的技术难点、解决方案与行业思考，与开发者共同推动低速无人驾驶技术的落地与创新。专注低速无人驾驶解决方案研发落地，聚焦封闭 / 半封闭场景，打造高适配、高安全、高性价比技术产品体系。依托多传感器融合感知、高精定位导航等核心技术，实现低速场景自主避障、多车协同，模块化设计可快速定制。

