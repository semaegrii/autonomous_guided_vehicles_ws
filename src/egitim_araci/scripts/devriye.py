#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
devriye deneme
"""

import rospy
from geometry_msgs.msg import Twist
import time

def Volta():
    rospy.init_node("volta_1")
    pub_2=rospy.Publisher("robot_2/cmd_vel",Twist,queue_size=10)
    pub=rospy.Publisher("robot_1/cmd_vel",Twist,queue_size=10)
    hiz_mesaji_1=Twist()
    hiz_mesaji_2=Twist()
    robot_hiz=1
    robot_hiz_2=2

    volta_uzunluk=2
    volta_sayisi=22000
    # volta_uzunluk=rospy.get_param("/VoltaUzunluuk")
    # volta_sayisi=rospy.get_param("/VoltaSaayisi")
    sayici=0

    while sayici<volta_sayisi:
        t0=rospy.Time.now().to_sec()
        yer_degistirme=0
      #  print(sayici %2==0)
        if sayici %2==0:
            hiz_mesaji_1.linear.x=robot_hiz
            hiz_mesaji_1.angular.z=robot_hiz
            hiz_mesaji_2.angular.z=robot_hiz_2
        
        else:
            hiz_mesaji_1.linear.x=-robot_hiz
            hiz_mesaji_1.angular.z=robot_hiz
            hiz_mesaji_2.angular.z=-robot_hiz_2
    
        while yer_degistirme<volta_uzunluk:
            pub.publish(hiz_mesaji_1)
            pub_2.publish(hiz_mesaji_2)
            #print("hiz",hiz_mesaji_2)
            time.sleep(5)
            t1=rospy.Time.now().to_sec()
            yer_degistirme=abs(hiz_mesaji_1.linear.x*(t1-t0))
            print(yer_degistirme)           
        hiz_mesaji_1.linear.x=0    
        hiz_mesaji_1.angular.z=0
        hiz_mesaji_2.angular.z=0    
       
        pub.publish(hiz_mesaji_1)
        pub_2.publish(hiz_mesaji_2)
        sayici=sayici+1                    
        print("sayici",sayici)

    rospy.loginfo("Devriye algoritması tamamlandı!")
    rospy.is_shutdown()
    
Volta()

