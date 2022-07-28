#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Düğüm Yardimiyla Hedefe Gitme
"""

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

def istemci():
    rospy.init_node("hedefe_git")
    istemci=actionlib.SimpleActionClient("move_base", MoveBaseAction)
    istemci.wait_for_server()
    hedef=MoveBaseGoal()
    hedef.target_pose.header.frame_id="map" #link map
    hedef.target_pose.pose.position.x=2.0    #hedef bilgisi göndermekteyiz
    hedef.target_pose.pose.position.y=-3.0
    hedef.target_pose.pose.orientation.w=1.0#robot hedefe vardığında baş açısının 0 derece olması içindir
    istemci.send_goal(hedef)#yukarıdaki isteğimizi göndermiş olduk
    istemci.wait_for_result()#sonuç gelince sonucu alacağız
    print(istemci.get_result())
    rospy.loginfo("Hedefe varildi !")

istemci()