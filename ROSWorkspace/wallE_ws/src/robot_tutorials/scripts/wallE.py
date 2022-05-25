#!/usr/bin/env /usr/bin/python3
import rospy
from std_msgs.msg import String, Int8

def wallE_talker():
    hello_pub = rospy.Publisher('hello', String, queue_size=10)
    hello_pub_int = rospy.Publisher('hello_int', Int8, queue_size=10)
    rospy.init_node('wallE', anonymous=True) # random number identifier
    rate = rospy.Rate(10) # 10 times per second
    counter = 0
    while not rospy.is_shutdown():
        greeting = "Hello, Eva!"
        greeting_int = ord(greeting[counter%len(greeting)])
        rospy.loginfo(greeting)
        hello_pub_int.publish(greeting_int)
        counter += 1
        hello_pub.publish(greeting)
        rate.sleep()

if __name__ == '__main__':
    try:
        wallE_talker()
    except rospy.ROSInterruptException:
        pass
