#!/usr/bin/env /usr/bin/python3
from robot_tutorials.srv import *
import rospy

def handleMaxTwoInts(req):
    a = req.a
    b = req.b
    m = max(a, b)
    print("Returning max({}, {}) = {}".format(a, b, m))
    return maxTwoIntsResponse(m)

def maxTwoIntsServer():
    rospy.init_node('maxTwoIntsServer')
    m = rospy.Service('maxTwoInts', maxTwoInts, handleMaxTwoInts)
    rospy.spin()

if __name__ == '__main__':
    maxTwoIntsServer()

