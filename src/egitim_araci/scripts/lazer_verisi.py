#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Uygulama 6: Lazer Verisi

"""

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

class LazerVerisi():
    def __init__(self):
        rospy.init_node("lazer_dugumu")
        self.pub =rospy.Publisher("robot_1/cmd_vel", Twist,queue_size=10)
        self.hiz_mesaji=Twist()
        rospy.Subscriber("robot_1/laser/scan",LaserScan,self.lazerCallback)
        rospy.spin()

    def lazerCallback(self,mesaj):
        sol_on =list(mesaj.ranges[0:9])
        sag_on =list(mesaj.ranges[350:359])
        on =sol_on+sag_on
        sol= list(mesaj.ranges[80:100])
        sag= list(mesaj.ranges[260:280])
        arka= list(mesaj.ranges[170:190])
        min_on=min(on)
        min_sol=min(sol)
        min_sag=min(sag)
        min_arka=min(arka)
        print(min_on, min_sol, min_arka)
        if min_on < 1.0:#min ön değeri 1den küçükse robot dursun değilse 0.5m/s hızla devam etsin.
            self.hiz_mesaji.linear.x =0.0
            self.pub.publish(self.hiz_mesaji)
        else:
            self.hiz_mesaji.linear.x=0.5
            self.pub.publish(self.hiz_mesaji)

nesne = LazerVerisi()

