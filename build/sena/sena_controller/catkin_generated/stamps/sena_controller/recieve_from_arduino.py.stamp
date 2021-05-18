#!/usr/bin/env python
import rospy
from rospy_tutorials.msg import Floats

motor = 0

def motorCb(msg):
    global motor
    motor  = msg.data[0]
    print("V1 : ", motor)

def main():
    rospy.init_node('subspy_to_arduino')
    rospy.Subscriber('/joint_from_arduino', Floats, motorCb, queue_size=10)

if __name__ == '__main__':
    main()
    rospy.spin()
    