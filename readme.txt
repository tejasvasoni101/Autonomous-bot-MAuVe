# Autonomous
![IsometricView](Images/IsoMetricView.jpg)

# Abstract

An oscillating lidar mount to extract raw 2-D maping of environment to be further used in SLAM and obstracle avoidance.

# Hardware

1. dc motor
2. encoder
3. lidar
4. motor driver l298


# Software
python
  cv2
  ICP source: https://engineering.purdue.edu/kak/distICP/ICP-2.1.1.html

# Rotating Lidar

Basically the lidar gives distance data of the point straint infront of it, the lidar is the mounted over a dc motor and oscillated under feedback from encoder, when rotated we get the data of encoder and coresponding distance, this data is sent serially from arduino to python on windows system serially, On python this data as polar cordinate  is then converted and plotted on a cartesian system, this instantaneous map is made through some filters and then to be further used for SLAM and obstracle avoidance algorithms.
	
# SLAM

Once we have the instantaneous map the next step to apply SLAM is to create a GLOBAL map by "stitch" with succedding instantaneous maps. Our first attempt was to extract points as features, using hough line transform of cv and twerking its parameters points were obtained but we switched to ICP(Iterative Closed Point) algorithm which is standard for SLAM application. we used an already packaged version of ICP, due to poor quality data of lidar, ICP was tested on dummy images prepared by us. results are attached. 

	
# Limitations

Poor quality data from Lidar
ICP works only for small shifts in maps, thus reqireing high speed lidar data extraction and processing or limiting the speed of bot.


# Applications


 
# Team Members



# Mentors

