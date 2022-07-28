#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
Uygulama 2: Tek Eksen Boyunca Hareket 2
(Publisher ile Subscribe tek bir script altinda toplandi)

"""

import rospy                
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from egitim_araci.msg import Mesafe

class HedefeGit():

    def __init__(self):
        rospy.init_node("duz_git")

        self.hedef_konumx=7.0
        self.guncel_konumx=0.0
        self.kontrolx=True#bayrak tanımlıyoruz.
        rospy.Subscriber("robot_1/odom", Odometry,self.odomCallback)
        rospy.Subscriber("mesafe_git",Mesafe,self.mesafeCallback)
        pub=rospy.Publisher("robot_1/cmd_vel", Twist,queue_size=10)
        hiz_mesaji=Twist()
        rate=rospy.Rate(10)#yayın hizi saniyede 10 kere yayın yapar.
       
        while not rospy.is_shutdown():#rospy kapatılana kadar bu işlemleri gerçekleştirir
            if self.kontrolx:
                hiz_mesaji.linear.x=0.5
                pub.publish(hiz_mesaji)
            else:
                hiz_mesaji.linear.x=0.0
                pub.publish(hiz_mesaji)
                rospy.loginfo("Hedefe varildi !")
            rate.sleep()

    def odomCallback(self,mesaj):

        self.guncel_konumx=mesaj.pose.pose.position.x
        if self.guncel_konumx<=self.hedef_konumx:
            self.kontrolx=True
        else:
            self.kontrolx=False

    def mesafeCallback(self,mesaj):
        self.hedef_konumx=mesaj.mesafe        

try:           
     
    HedefeGit()
except rospy.ROSInterruptException:
    print("Dügüm sonlandı!")

