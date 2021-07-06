#!/usr/bin/env python

import cv2
import numpy as np

def blob_detect(image, hsv_min, hsv_max, blur=0, blob_params=None, search_window=None, imshow=False):
    if blur > 0:
        image = cv2.blur(image, (blur, blur))
        if imshow:
            cv2.imshow("Blur", image)
            cv2.waitKey(0)
    
    if search_window is None: search_window = [0.0, 0.0, 1.0, 1.0]

    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    
    mask = cv2.inRange(hsv, hsv_min, hsv_max)
    
    if imshow:
        cv2.imshow("HSV Mask", mask)
    
    mask = cv2.dilate(mask, None, iterations = 2)
    
    if imshow:
        cv2.imshow("Dilate mask", mask)
        cv2.waitKey(0)
    
    mask = cv2.erode(mask, None, iterations = 2)
    
    if imshow:
        cv2.imshow("Erode mask", mask)
        cv2.waitKey(0)
        
    mask = apply_search_window(mask, search_window)
    
    if imshow:
        cv2.imshow("Searching Mask", mask)
        cv2.waitKey(0)
    
    if blob_params is None:
        params = cv2.SimpleBlobDetector_Params()
        
        params.minThreshold = 0
        params.maxThreshold = 100
        
        params.filterByArea = True
        params.minArea = 30
        params.maxArea = 20000
        
        params.filterByCircularity = True
        params.minCircularity = 0.1
        
        params.filterByConvexity = True
        params.minInertiaRatio = 0.5
    
    else :
        params = blob_params
    
    detector = cv2.SimpleBlobDetector_create(params)
    
    reversemask = 255-mask
    
    if imshow:
        cv2.imshow("Reverse Mask", reversemask)
        cv2.waitKey(0)
    
    keypoints = detector.detect(reversemask)
    
    return keypoints, reversemask

 
def draw_keypoints(image,                   #-- Input image
                   keypoints,               #-- CV keypoints
                   line_color=(0,0,255),    #-- line's color (b,g,r)
                   imshow=False             #-- show the result
                  ):
    
    #-- Draw detected blobs as red circles.
    #-- cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS ensures the size of the circle corresponds to the size of blob
    im_with_keypoints = cv2.drawKeypoints(image, keypoints, np.array([]), line_color, cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
 
    if imshow:
        # Show keypoints
        cv2.imshow("Keypoints", im_with_keypoints)
        
    return(im_with_keypoints)

#---------- Draw search window: returns the image
#-- return(image)
def draw_window(image,              #- Input image
                window_adim,        #- window in adimensional units
                color=(255,0,0),    #- line's color
                line=5,             #- line's thickness
                imshow=False        #- show the image
               ):
    
    rows = image.shape[0]
    cols = image.shape[1]
    
    x_min_px    = int(cols*window_adim[0])
    y_min_px    = int(rows*window_adim[1])
    x_max_px    = int(cols*window_adim[2])
    y_max_px    = int(rows*window_adim[3])  
    
    #-- Draw a rectangle from top left to bottom right corner
    image = cv2.rectangle(image,(x_min_px,y_min_px),(x_max_px,y_max_px),color,line)
    
    if imshow:
        # Show keypoints
        cv2.imshow("Keypoints", image)

    return(image)

#---------- Draw X Y frame
#-- return(image)
def draw_frame(image,
               dimension=0.3,      #- dimension relative to frame size
               line=2              #- line's thickness
    ):
    
    rows = image.shape[0]
    cols = image.shape[1]
    size = min([rows, cols])
    center_x = int(cols/2.0)
    center_y = int(rows/2.0)
    
    line_length = int(size*dimension)
    
    #-- X
    image = cv2.line(image, (center_x, center_y), (center_x+line_length, center_y), (0,0,255), line)
    #-- Y
    image = cv2.line(image, (center_x, center_y), (center_x, center_y+line_length), (0,255,0), line)
    
    return (image)

#---------- Apply search window: returns the image
#-- return(image)
def apply_search_window(image, window_adim=[0.0, 0.0, 1.0, 1.0]):
    rows = image.shape[0]
    cols = image.shape[1]
    x_min_px    = int(cols*window_adim[0])
    y_min_px    = int(rows*window_adim[1])
    x_max_px    = int(cols*window_adim[2])
    y_max_px    = int(rows*window_adim[3])    
    
    #--- Initialize the mask as a black image
    mask = np.zeros(image.shape,np.uint8)
    
    #--- Copy the pixels from the original image corresponding to the window
    mask[y_min_px:y_max_px,x_min_px:x_max_px] = image[y_min_px:y_max_px,x_min_px:x_max_px]   
    
    #--- return the mask
    return(mask)
    
#---------- Apply a blur to the outside search region
#-- return(image)
def blur_outside(image, blur=5, window_adim=[0.0, 0.0, 1.0, 1.0]):
    rows = image.shape[0]
    cols = image.shape[1]
    x_min_px    = int(cols*window_adim[0])
    y_min_px    = int(rows*window_adim[1])
    x_max_px    = int(cols*window_adim[2])
    y_max_px    = int(rows*window_adim[3])    
    
    #--- Initialize the mask as a black image
    mask    = cv2.blur(image, (blur, blur))
    
    #--- Copy the pixels from the original image corresponding to the window
    mask[y_min_px:y_max_px,x_min_px:x_max_px] = image[y_min_px:y_max_px,x_min_px:x_max_px]   
    
    
    
    #--- return the mask
    return(mask)
    
#---------- Obtain the camera relative frame coordinate of one single keypoint
#-- return(x,y)
def get_blob_relative_position(image, keyPoint):
    rows = float(image.shape[0])
    cols = float(image.shape[1])
    # print(rows, cols)
    center_x    = 0.5*cols
    center_y    = 0.5*rows
    # print(center_x)
    x = (keyPoint.pt[0] - center_x)/(center_x)
    y = (keyPoint.pt[1] - center_y)/(center_y)
    return(x,y)
        
 
        
#----------- TEST
if __name__=="__main__":

    #--- Define HSV limits
    blue_min = (0, 100, 0) #-- orange ball
    blue_max = (255, 255, 255) 
    
    #--- Define area limit [x_min, y_min, x_max, y_max] adimensional (0.0 to 1.0) starting from top left corner
    window = [0.25, 0.25, 0.65, 0.75]
    
    #-- IMAGE_SOURCE: either 'camera' or 'imagelist'
    #SOURCE = 'video'
    SOURCE = 'camera'
    
    if SOURCE == 'video':
        cap = cv2.VideoCapture(0)
        while(True):
            # Capture frame-by-frame
            ret, frame = cap.read()
            
            #-- Detect keypoints
            keypoints, _ = blob_detect(frame, blue_min, blue_max, blur=3, 
                                        blob_params=None, search_window=window, imshow=False)
            #-- Draw search window
            frame     = draw_window(frame, window)

            #-- click ENTER on the image window to proceed
            draw_keypoints(frame, keypoints, imshow=True)

            #-- press q to quit
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
        
    else:
        #-- Read image list from file:
        image_list = []
        image_list.append(cv2.imread("ball.jpeg"))
        #image_list.append(cv2.imread("blob2.jpg"))
        #image_list.append(cv2.imread("blob3.jpg"))

        for image in image_list:
            #-- Detect keypoints
            keypoints, _ = blob_detect(image, blue_min, blue_max, blur=5, 
                                        blob_params=None, search_window=window, imshow=True)
            
            image    = blur_outside(image, blur=15, window_adim=window)
            cv2.imshow("Outside Blur", image)
            cv2.waitKey(0)            
            
            image     = draw_window(image, window, imshow=True)
            #-- enter to proceed
            cv2.waitKey(0)
            
            #-- click ENTER on the image window to proceed
            image     = draw_keypoints(image, keypoints, imshow=True)            
            cv2.waitKey(0)
            #-- Draw search window
        
            image    = draw_frame(image)
            cv2.imshow("Frame", image)
            cv2.waitKey(0)
    