#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
Uygulama1: Tek Eksen Boyunca Hareket 1
"""

import rospy
from geometry_msgs.msg import Twist

def hareket():
    
    rospy.init_node("duz_git")
    pub= rospy.Publisher("robot_1/cmd_vel", Twist, queue_size=10)
    pub_2=rospy.Publisher("robot_2/cmd_vel",Twist,queue_size=10)
    hiz_mesaji_1 = Twist()
    hiz_mesaji_2 = Twist()
    hiz_mesaji_1.linear.x= 0.5
    hiz_mesaji_2.linear.x=0.5
    mesafe = 5
    mesafe_2= 4
    yer_degistirme= 0
    yer_degistirme_2= 0
    t0 = rospy.Time.now().to_sec()


    while (yer_degistirme < mesafe):

        pub.publish(hiz_mesaji_1)
        t1=rospy.Time.now().to_sec()
        yer_degistirme=hiz_mesaji_1.linear.x*(t1-t0)
    hiz_mesaji_1.linear.x=0.0
    pub.publish(hiz_mesaji_1)
    rospy.loginfo("Hedefe varildi!")


    while (yer_degistirme_2 < mesafe_2):
        pub_2.publish(hiz_mesaji_2)
        t1=rospy.Time.now().to_sec()    
        yer_degistirme_2=hiz_mesaji_2.linear.x*(t1-t0)
    hiz_mesaji_2.linear.x=0.0
    pub_2.publish(hiz_mesaji_2)
    rospy.loginfo("Hedefe varildi!")

hareket()

