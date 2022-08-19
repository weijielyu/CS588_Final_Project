# Lane Boundaries Detection in Highbay Backlot

![image](https://github.com/weijielyu/CS588_Final_Project/blob/main/img/detection.png)

## About

**Contributors**

* Weijie Lyu (UIUC)
* Junzhe Wu (UIUC)
* Sirui Wang (UIUC)

This directory contains scripts for the final project of course *UIUC CS-588 Autonomous Vehicle System Engineering*

In this project, we used simply canny edge-detection, hough line detection and DBSCAN .etc algorithms, successfully accomplished lane boundaries detection and lane following task in highbay backlot. Especially, our algorithm has significantly better performance than nowadays state-of-art CNN approaches on the sharply curved lanes.

## Dependency

ROS Version: Noetic

OpenCV-Python 4.5.4

## Usage

Vechile setup. In the first terminal, launch joystick controller
```
source devel/setup.bash
roslaunch basic_launch dbw_joystick.launch
```
Open another terminal, launch basic sensors
```
source devel/setup.bash
roslaunch basic_launch gnss_sensor_init.launch
```
To reproduce the lane boundaries detection and lane following task
```
python lanenet-lane-detection-master/lane_following.py
```
For tuning parameters, visualizing lane boundaries detection results. You need to first make folders according to `hough_lane_detection.py`
```
python scripts/hough_lane_detection.py
```

## Demo

[![video](https://img.youtube.com/vi/BWISdRYjxJE/0.jpg)](https://www.youtube.com/watch?v=BWISdRYjxJE)


## Links
**Course Website**

http://luthuli.cs.uiuc.edu/~daf/courses/MAAV-21/588-2021-home.html

**Our Course Exercises Repo**

https://github.com/weijielyu/CS588_Exercises

**Our Simulator Repo**

https://github.com/weijielyu/POLARIS_GEM_e2

forked from https://github.com/hangcui1201/POLARIS_GEM_e2

**Simulator Setup**

https://gist.github.com/Xiaoming-Zhao/b0ec2ad7c7390e31beab4c4a9451200d

## Reference

* J. Canny, "A Computational Approach to Edge Detection," in IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. PAMI-8, no. 6, pp. 679-698, Nov. 1986, doi: 10.1109/TPAMI.1986.4767851.

* Neven, D., De Brabandere, B., Georgoulis, S., Proesmans, M., & Van Gool, L. (2018, June). Towards end-to-end lane detection: an instance segmentation approach. In 2018 IEEE intelligent vehicles symposium (IV) (pp. 286-291). IEEE.

* Ester, M., Kriegel, H. P., Sander, J., & Xu, X. (1996, August). A density-based algorithm for discovering clusters in large spatial databases with noise. In kdd (Vol. 96, No. 34, pp. 226-231).

* Tabelini, L., Berriel, R., Paixao, T. M., Badue, C., De Souza, A. F., & Oliveira-Santos, T. (2021). Keep your eyes on the lane: Real-time attention-guided lane detection. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (pp. 294-302).

* MAO Yuxing,MIAO Jialue,WANG Quanlin et al. Image analysis and vision computing methods for running deflection of vehicles[J]. CEA, 2013, 49(22): 167-172.

