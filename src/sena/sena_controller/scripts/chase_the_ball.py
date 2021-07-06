#!/usr/bin/python3
"""
mendapatkan posisi bola and dan memberikan perintah untuk menjalankan roda
Subscribes to 
    /sena/point_ball
    
Publishes commands to 
    /sena/control/cmd_vel    
"""
import math, time
import rospy
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Point

K_LAT_DIST_TO_STEER     = 2.0

def saturate(value, min, max):
    if value <= min: return(min)
    elif value >= max: return(max)
    else: return(value)

class ChaseBall():
    def __init__(self):
        
        self.ball_x = 0.0
        self.ball_y = 0.0
        self._time_detected = 0.0
        
        self.sub_center = rospy.Subscriber("/sena/point_ball", Point, self.update_ball)
        rospy.loginfo("Subscriber set")
        
        self.pub_twist = rospy.Publisher("/sena/control/cmd_vel", Twist, queue_size=5)
        rospy.loginfo("Publisher set")
        
        self._msg = Twist()
        
        self._time_steer = 0
        self._steer_sign_prev = 0
    
    @property
    def is_detected(self): return(time.time() - self._time_detected < 1.0)
    
    def update_ball(self, msg):
        self.ball_x = msg.x
        self.ball_y = msg.y
        self._time_detected = time.time()
        
    def get_control_actions(self):
        steer_action = 0.0
        throttle_action = 0.0
        if self.is_detected:
            steer_action = -K_LAT_DIST_TO_STEER*self.ball_x
            steer_action = saturate(steer_action, -1.5, 1.5)
            rospy.loginfo("Mengendalikan perintah %.2f"%steer_action)
            throttle_action = 1.0
        
        return(steer_action, throttle_action)
    
    def run(self):
        rate = rospy.Rate(5)
        
        while not rospy.is_shutdown():
            steer_action, throttle_action = self.get_control_actions()
            
            rospy.loginfo("Mengendalikan : %3.1f"%(steer_action))
            
            self._msg.linear.x = throttle_action
            self._msg.linear.y = steer_action
            
            self.pub_twist.publish(self._msg)
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("chase_ball")
    chase_ball = ChaseBall()
    chase_ball.run()
            