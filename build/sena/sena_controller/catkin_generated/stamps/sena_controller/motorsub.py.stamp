#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from pyfirmata import ArduinoMega, util 
import time
import math
import numpy as np

# board = pyfirmata.Arduino('dev/ttyUSB0') #port 'dev/tty/...', baudrate()
board = ArduinoMega('/dev/ttyUSB0')
print("Connection Successfully!")
it = util.Iterator(board)
it.start()

# m1r_en = board.get_pin("d:22:o") #22
# m1l_en = board.get_pin("d:24:o") #24
motor1r = board.get_pin("d:4:p") #2
motor1l = board.get_pin("d:5:p") #3
led = board.get_pin("d:13:o")
# m1r_en.write(1)
# m1l_en.write(1)

# m2r_en = board.get_pin("d:38:o") #38
# m2l_en = board.get_pin("d:40:o") #40
# motor2r = board.get_pin("d:13:p") #13
# motor2l = board.get_pin("d:12:p") #12
# m2r_en.write(1)
# m2l_en.write(1)

# m3r_en = board.get_pin("d:30:o") #30
# m3l_en = board.get_pin("d:32:o") #32
# motor3r = board.get_pin("d:11:p") #11
# motor3l = board.get_pin("d:10:p") #10
# m3r_en.write(1)
# m3l_en.write(1)
            
def motorsub_Callback(msg):
    
    print("Kecepatan linear x : " + str(msg.linear.x))
    print("Kecepatan linear y : " + str(msg.linear.y))
    print("Kecepatan angular z : " + str(msg.angular.z))
    
    Vm_x = msg.linear.x
    Vm_y = msg.linear.y
    Vm_z = msg.angular.z
    
    V1 = (-Vm_x / 2) - (np.sqrt(3) * Vm_y/2) + Vm_z
    # V2 = (-Vm_x / 2) + (np.sqrt(3) * Vm_y/2) + Vm_z
    # V3 = Vm_x + Vm_z
    
    print("Nilai V1 : ", str(V1))
    # print("Nilai V2 : ", str(V2))
    # print("Nilai V3 : ", str(V3))
    
            
    if V1 > 0:
        motor1r.write(V1)
        motor1l.write(0)
        led.write(1)
    else:
        motor1r.write(0)
        motor1l.write(-V1)
        led.write(0)
    # if V2 > 0:
    #     motor2r.write(V2)
    #     motor2l.write(0)
    # else:
    #     motor2r.write(0)
    #     motor2l.write(-V2)
    # if V3 > 0:
    #     motor3r.write(V3)
    #     motor3l.write(0)
    # else:
    #     motor3r.write(0)
    #     motor3l.write(-V3)
            
def motorsub():
    rospy.init_node('motorsub', anonymous=False)
    rospy.Subscriber('cmd_vel', Twist, motorsub_Callback)
    rospy.spin()

if __name__ == '__main__':
    motorsub()
    
