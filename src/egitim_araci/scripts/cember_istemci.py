#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
Uygulama3: Çember Boyunca Hareket -İstemci Düğümü
"""

import rospy
from egitim_araci.srv import CemberHareket

rospy.wait_for_service("cember_servis")
try:
    yaricap = float(input("Yaricap giriniz: "))
    servis = rospy.ServiceProxy("cember_servis",CemberHareket)
    servis(yaricap)
except rospy.ServiceException:
    print("Servisle alakalı hata meydana geldi !!")    