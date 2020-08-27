#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

key_mapping = {'w': [0, 1], 'a': [1, 0], 's': [0, 0], 
               'x': [0, -1], 'd': [-1, 0], 'q': [1, 1], 'e': [-1, 1]}
g_last_t = None

def keys_cb(msg, twist_pub):
  global g_last_t
  if len(msg.data) == 0 or not key_mapping.has_key(msg.data[0]):
    return
  vels = key_mapping[msg.data[0]]
  g_last_t = Twist()
  g_last_t.angular.z = vels[0]
  g_last_t.linear.x = vels[1]*0.1
  twist_pub.publish(g_last_t)

if __name__ == '__main__':
  rospy.init_node('keys_to_twist')
  twist_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
  rospy.Subscriber('keys', String, keys_cb, twist_pub)
  rate = rospy.Rate(10)
  g_last_t = Twist()

  while not rospy.is_shutdown():
    twist_pub.publish(g_last_t)
    rate.sleep()
