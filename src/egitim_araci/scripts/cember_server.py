#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
Uygulama3: Çember Boyunca Hareket -Server Düğümü
"""

import rospy
from geometry_msgs.msg import Twist
from egitim_araci.srv import CemberHareket


def cemberFonksiyonu(istek):
    hiz_mesaji=Twist()
    lineer_hiz =0.5
    hiz_mesaji.linear.x=lineer_hiz
    yaricap=istek.yaricap
    #w = v / r
    hiz_mesaji.angular.z=lineer_hiz/yaricap
    while not rospy.is_shutdown():
        pub.publish(hiz_mesaji)


rospy.init_node("cember_hareket")
pub=rospy.Publisher("robot_1/cmd_vel", Twist, queue_size=10)
rospy.Service("cember_servis", CemberHareket,cemberFonksiyonu)
rospy.spin()
