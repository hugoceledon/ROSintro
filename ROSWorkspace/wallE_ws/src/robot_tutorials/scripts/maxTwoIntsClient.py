#!/usr/bin/env /usr/bin/python3

import sys
import rospy
from robot_tutorials.srv import *

def maxTwoIntsClient(x, y):
    rospy.wait_for_service('maxTwoInts')
    try:
        MTI = rospy.ServiceProxy('maxTwoInts', maxTwoInts)
        resp = MTI(x, y)
        return resp.max
    except rospy.ServiceException as e:
        print("Service call failed with error: '{}'".format(e))

def usage():
    return "{} [{} {}]".format(sys.argv[0])

if __name__ == '__main__':
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print("HELLO")
        print(usage())
        sys.exit(1)
    print("Requesting max({}, {})".format(x, y))
    print("max({}, {}) = {}".format(x, y, maxTwoIntsClient(x, y)))
