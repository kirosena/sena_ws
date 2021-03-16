#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from pyfirmata import util, Arduino
import time
import math

board = pyfirmata.Arduino('') #port 'dev/tty/...'
print("Koneksi berhasil")

it = util.Iterator(board)
it.start()

m1r = board.get_pin['d::p'] #pin from arduino d = digital, p = pwm
m1l = board.get_pin['d::p']

m2r = board.get_pin['d::p'] #motor 2
m2l = board.get_pin['d::p']

m3r = board.get_pin['d::p'] #motor 3
m3l = board.get_pin['d::p']

def motorsub_Callback(msg):
    print("Kecepatan linear x : ", + str(msg.linear.x))
    print("Kecepatan linear y : ", + str(msg.linear.y))
    print("Kecepatan angular z : ", + str(msg.linear.z))
    
    Vm_x = msg.linear.x
    Vm_y = msg.linear.y
    Vm_z = msg.angular.z
    
    V1 = (-Vm_x / 2) - (sqrt(3) * Vm_y/2) + Vm_z
    V2 = Vm_x + Vm_z
    V3 = (-Vm_x / 2) + (sqrt(3) * Vm_y/2) + Vm_z
    
    print("Nilai V1 : ", str(V1))
    print("Nilai V2 : ", str(V2))
    print("Nilai V3 : ", str(V3))
    
    if V1 >= 0:
        m1r.write(V1)
        m1l.write(0)
    else:
        m1r.write(0)
        m1l.write(-V1)
    if V2 >= 0:
        m2r.write(V2)
        m2l.write(0)
    else:
        m2r.write(0)
        m2l.write(-V2)
    if V3 >= 0:
        m3r.write(V3)
        m3l.write(0)
    else:
        m3r.write(0)
        m3l.write(-V3)

def motorsub():
    rospy.init_node('/motorsub', anonymous=True)
    rospy.Subscriber('/cmd_vel', Twist, motorsub_Callback)
    rospy.spin()

if __name__ == '__main__':
    motorsub()
    