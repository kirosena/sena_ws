#!/usr/bin/env python

'''
subs to :
    /sena/camera_node
publish to :
    /sena/image_blob : image with detected blob and search window
    /sena/image_mask : masking
    /sena/point_blob : blob position in adimensional values wrt. camera frame
'''

if __name__ == '__main__' and __package__ is None:
    from os import sys, path
    sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))

import sys

from numpy.lib.twodim_base import mask_indices
import rospy
import cv2
import time

from std_msgs.msg import String
from sensor_msgs.msg import Image
from geometry_msgs.msg import Point
from cv_bridge import CvBridge, CvBridgeError
from include.blob_detector import *

class BlobDetector:
    def __init__(self, thr_min, thr_max, blur=15, blob_params=None, detection_window=None):
        self.set_threshold(thr_min, thr_max)
        self.set_blur(blur)
        self.set_blob_params(blob_params)
        self.detection_window = detection_window
        
        self._t0 = time.time()
        self.blob_point = Point()
        
        print("Publishing image to topic image_ball")
        self.image_pub = rospy.Publisher("/sena/image_ball", Image, queue_size=1)
        self.mask_pub = rospy.Publisher("/sena/image_mask", Image, queue_size=1)
        
        print("Publishing position to topic point_ball")
        self.blob_pub = rospy.Publisher("/sena/point_ball", Image, queue_size=1)
        
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber("/sena/camera_node", Image, self.callback)
        print("Subs to topic /sena/camera_node")

    def set_threshold(self, thr_min, thr_max):
        self._threshold = [thr_min, thr_max]
    
    def set_blur(self, blur):
        self._blur = blur
    
    def set_blob_params(self, blob_params):
        self._blob_params = blob_params
    
    def callback(self, data):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except CvBridgeError as e:
            print(e)
        
        (rows, cols, channels)= cv_image.shape
        
        if cols > 60 and rows > 60:
            #-- detech blobs
            keypoints, mask = blob_detect(cv_image, self._threshold[0], self._threshold[1], self._blur,
                                          blob_params=self._blob_params, search_window=self.detection_window)
            
            cv_image = blur_outside(cv_image, 10, self.detection_window)
            cv_image = draw_window(cv_image, self.detection_window, line=1)
            cv_image = draw_frame(cv_image)
            cv_image = draw_keypoints(cv_image, keypoints)
            
            try:
                self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
                self.mask_pub.publish(self.bridge.cv2_to_imgmsg(mask, "8UC1"))
            except CvBridgeError as e :
                print(e)
            
            for i, keyPoint in enumerate(keypoints):
                # x = keyPoint.pt[0]
                # y = keyPoint.pt[1]
                # s = keyPoint.size
                # print("kp %d: s = %3d x = %3d y = %3d"%(i, s, x, y))
                
                x, y = get_blob_relative_position(cv_image, keyPoint)
                
                self.blob_point.x = x
                self.blob_point.y = y
                self.blob_pub.publish(self.blob_point)
                break
                
            fps = 1.0/(time.time() - self._t0)
            self._t0 = time.time()

def main(args):
    orange_min = (0, 100, 0)
    orange_max = (255, 255, 255)
    # blur_min = (55, 40, 0)
    # blur_max = (150, 255, 255)
    
    blur = 5
    min_size = 10
    max_size = 10
    
    #-- detection window respect to camera frame in (x_min, y_min, x_max, y_max)
    
    x_min = 0.1
    x_max = 0.9
    y_min = 0.4
    y_max = 0.9
    
    detection_window = [x_min, y_min, x_max, y_max]
    
    params = cv2.SimpleBlobDetector_Params()
    
    #-- change threshold
    params.minThreshold = 0;
    params.maxThreshold = 100;
    
    #-- filter by area
    params.filterByArea = True
    params.minArea = 20
    params.maxArea = 200000
    
    #-- filter by circularity
    params.filterByCircularity = True
    params.minCircularity = 0.1
    
    #-- filter by Convexity
    params.filterConvexity = True
    params.minConvexity = 0.2
    
    #-- filter by intertia
    params.filterByInertia = True
    params.minInertiaRation = 0.7
    
    ic = BlobDetector(orange_min, orange_max, blur, params, detection_window)
    
    rospy.init_node("blob_detector", anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("shutting down")
    
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
    