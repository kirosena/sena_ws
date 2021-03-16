;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::OmniVisionInfo)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'OmniVisionInfo (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::OMNIVISIONINFO")
  (make-package "SENA_MSGS::OMNIVISIONINFO"))

(in-package "ROS")
;;//! \htmlinclude OmniVisionInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sena_msgs::OmniVisionInfo
  :super ros::object
  :slots (_header _ballinfo ))

(defmethod sena_msgs::OmniVisionInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ballinfo __ballinfo) (instance sena_msgs::BallInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ballinfo __ballinfo)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ballinfo
   (&rest __ballinfo)
   (if (keywordp (car __ballinfo))
       (send* _ballinfo __ballinfo)
     (progn
       (if __ballinfo (setq _ballinfo (car __ballinfo)))
       _ballinfo)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sena_msgs/BallInfo _ballinfo
    (send _ballinfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sena_msgs/BallInfo _ballinfo
       (send _ballinfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sena_msgs/BallInfo _ballinfo
     (send _ballinfo :deserialize buf ptr-) (incf ptr- (send _ballinfo :serialization-length))
   ;;
   self)
  )

(setf (get sena_msgs::OmniVisionInfo :md5sum-) "ff3507e7095313c782bce34c1149ea44")
(setf (get sena_msgs::OmniVisionInfo :datatype-) "sena_msgs/OmniVisionInfo")
(setf (get sena_msgs::OmniVisionInfo :definition-)
      "Header header
BallInfo ballinfo

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sena_msgs/BallInfo
Header header
int32  ballinfostate
bool   pos_known
bool   velocity_known
PPoint real_pos

================================================================================
MSG: sena_msgs/PPoint
float32 angle
float32 radius

")



(provide :sena_msgs/OmniVisionInfo "ff3507e7095313c782bce34c1149ea44")


