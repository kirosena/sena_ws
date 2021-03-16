;; Auto-generated. Do not edit!


(when (boundp 'sena_common::MotorInfo)
  (if (not (find-package "SENA_COMMON"))
    (make-package "SENA_COMMON"))
  (shadow 'MotorInfo (find-package "SENA_COMMON")))
(unless (find-package "SENA_COMMON::MOTORINFO")
  (make-package "SENA_COMMON::MOTORINFO"))

(in-package "ROS")
;;//! \htmlinclude MotorInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sena_common::MotorInfo
  :super ros::object
  :slots (_header _motordata ))

(defmethod sena_common::MotorInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motordata __motordata) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motordata __motordata)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motordata
   (&optional __motordata)
   (if __motordata (setq _motordata __motordata)) _motordata)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[3] _motordata
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[3] _motordata
     (dotimes (i 3)
       (write-long (elt _motordata i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[3] _motordata
   (dotimes (i (length _motordata))
     (setf (elt _motordata i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get sena_common::MotorInfo :md5sum-) "3f0b34f70bedeea64d08b81a683da488")
(setf (get sena_common::MotorInfo :datatype-) "sena_common/MotorInfo")
(setf (get sena_common::MotorInfo :definition-)
      "Header header
uint32[3] motordata

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

")



(provide :sena_common/MotorInfo "3f0b34f70bedeea64d08b81a683da488")


