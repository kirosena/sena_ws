;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::BallInfo)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'BallInfo (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::BALLINFO")
  (make-package "SENA_MSGS::BALLINFO"))

(in-package "ROS")
;;//! \htmlinclude BallInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sena_msgs::BallInfo
  :super ros::object
  :slots (_header _ballinfostate _pos_known _velocity_known _real_pos ))

(defmethod sena_msgs::BallInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ballinfostate __ballinfostate) 0)
    ((:pos_known __pos_known) nil)
    ((:velocity_known __velocity_known) nil)
    ((:real_pos __real_pos) (instance sena_msgs::PPoint :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ballinfostate (round __ballinfostate))
   (setq _pos_known __pos_known)
   (setq _velocity_known __velocity_known)
   (setq _real_pos __real_pos)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ballinfostate
   (&optional __ballinfostate)
   (if __ballinfostate (setq _ballinfostate __ballinfostate)) _ballinfostate)
  (:pos_known
   (&optional (__pos_known :null))
   (if (not (eq __pos_known :null)) (setq _pos_known __pos_known)) _pos_known)
  (:velocity_known
   (&optional (__velocity_known :null))
   (if (not (eq __velocity_known :null)) (setq _velocity_known __velocity_known)) _velocity_known)
  (:real_pos
   (&rest __real_pos)
   (if (keywordp (car __real_pos))
       (send* _real_pos __real_pos)
     (progn
       (if __real_pos (setq _real_pos (car __real_pos)))
       _real_pos)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ballinfostate
    4
    ;; bool _pos_known
    1
    ;; bool _velocity_known
    1
    ;; sena_msgs/PPoint _real_pos
    (send _real_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ballinfostate
       (write-long _ballinfostate s)
     ;; bool _pos_known
       (if _pos_known (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_known
       (if _velocity_known (write-byte -1 s) (write-byte 0 s))
     ;; sena_msgs/PPoint _real_pos
       (send _real_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ballinfostate
     (setq _ballinfostate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _pos_known
     (setq _pos_known (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_known
     (setq _velocity_known (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sena_msgs/PPoint _real_pos
     (send _real_pos :deserialize buf ptr-) (incf ptr- (send _real_pos :serialization-length))
   ;;
   self)
  )

(setf (get sena_msgs::BallInfo :md5sum-) "842fb4e2989d0235594fa714af57acbd")
(setf (get sena_msgs::BallInfo :datatype-) "sena_msgs/BallInfo")
(setf (get sena_msgs::BallInfo :definition-)
      "Header header
int32  ballinfostate
bool   pos_known
bool   velocity_known
PPoint real_pos

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
MSG: sena_msgs/PPoint
float32 angle
float32 radius

")



(provide :sena_msgs/BallInfo "842fb4e2989d0235594fa714af57acbd")


