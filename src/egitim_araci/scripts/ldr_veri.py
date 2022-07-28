#!/usr/bin/env python
#-*-coding: utf-8 -*-
 
import rospy
from sensor_msgs.msg import LaserScan
 
def func(veri):
    
    print(veri)

def sonlandir():
    
    rospy.loginfo('sonlandirildi!')

if __name__ == "__main__":

    rospy.init_node('lidar_verileri',anonymous=True)
    
    rospy.loginfo('Sonlandirmak icin CTRL+C')
    rospy.on_shutdown(sonlandir)
    
    rospy.Subscriber('/robot_2/laser/scan', LaserScan, func)
    rospy.spin()