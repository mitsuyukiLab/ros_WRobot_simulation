#!/usr/bin/env python

import numpy as np
import rospy
import tf

class MapTfPub(object):
  def __init__(self): 
    self.br = tf.TransformBroadcaster()

  def map_tf_pub(self):
    self.br.sendTransform((0, 0, 0), 
                     (0, 0, -0.7071, 0.7071), 
                     rospy.Time.now(), 
                     'map', 
                     'odom_combined')


rospy.init_node("map_tf_publisher")
map_pub = MapTfPub()
r = rospy.Rate(10)
while not rospy.is_shutdown():
  map_pub.map_tf_pub()
  r.sleep()






