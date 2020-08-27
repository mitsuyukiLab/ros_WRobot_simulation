#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
import cv2, cv_bridge
import numpy as np

class Follower(object):
  def __init__(self):
    self.bridge = cv_bridge.CvBridge()
    # cv2.namedWindow('window', 1)
    self.image_sub = rospy.Subscriber('global_camera/image_raw', Image, self.image_cb)

  def image_cb(self, msg):
    image = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
    image = image[:, 80:-80, :]
    cv2.imshow('window0', image)
    cv2.waitKey(1)

    kernel = np.ones((41,41), np.uint8) 
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    obstacles = np.zeros(hsv.shape[0:2])
    obstacles[hsv[:, :, 1]>30] = 255
    box = obstacles
    # box = cv2.erode(obstacles, kernel, iterations=1)
    # print(obstacles[:10, :10])
    # cv2.imshow('window1', box)
    # cv2.waitKey(1)

    canny = cv2.Canny(image, 100, 200)
    canny[20:-20, 20:-20] = 0

    wall = cv2.dilate(canny, kernel, iterations=1)
    wall = cv2.erode(wall, kernel, iterations=1)
    # cv2.imshow('window2', wall)
    # cv2.waitKey(1)

    mapping = box - wall
    cv2.imshow('window3', mapping)
    cv2.waitKey(1)
    
    # every pixel is 2.60mm
    # for i in range(0, 480):
    #   if mapping[50, i] < 200:
    #     print(i)

    # cv2.imwrite("my.pgm",mapping)

rospy.init_node('global_camera_follower')
follower = Follower()
rospy.spin()
