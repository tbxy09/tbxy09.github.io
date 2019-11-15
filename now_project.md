## My keyword

+ Computer Vision,
    + human detection and tracking in a multi-person, unstructure enviroment
    + VR,AR motion capture/pose estimation and 3D virtual character animation
    + Inference in Edge with less network connection
    + 基于视觉模仿的服装工业的机械手[基于imitation强化模型]

+ 通讯系统
    + ARM/DSP/SoC,real-time on-device software development
    + 语音编解码/增强, low-latence vocoder
    + 通讯协议层开发，维护

## Project Introduction

我主导这个项目是公司3D虚拟试衣项目,项目技术性的描述是 on-device video non-Neural body tracking/ 3D virutal character animation,
首先它属于一个实时性的视频处理范畴，其次涉及到一个 non-Neural，有衣服的遮挡。再者，它需要上下肢体的跟踪和虚拟人物的驱动

## Work Scope

on-device video non-Neural body tracking/3D virtual character animation

- build and training body tracking network
- build and training body animation/imitation network
- dataset generation/prepareation
- build metrics to measure the loss of both 2d and 3d features,keypoint/rotation features (tune the weight of each loss contribution)
- animation visualization
- movement smooth
- AR Location 方案研究
- human body movement database building

## Work Challenge

work challenge

model design
	* model-free/model-base 方案选择,volumetric cnn regression, smpl-based regression
	* depth ambiguity of image,深度信息的模糊性，
	* dense rotation supervision data generation
	* location/rotation jitter problem
	* chest turn specific/detail movement accuracy
	* Inference latency/performance tradeoff

Inference
	* less dependency to the network connection
	* video tracking/animation/clothing all run together in edge device

## Improvements
![rend_img_overlay00012.png](./img/rend_img_overlay00012.png = 540x960)


