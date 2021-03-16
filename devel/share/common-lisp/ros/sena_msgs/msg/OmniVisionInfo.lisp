; Auto-generated. Do not edit!


(cl:in-package sena_msgs-msg)


;//! \htmlinclude OmniVisionInfo.msg.html

(cl:defclass <OmniVisionInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ballinfo
    :reader ballinfo
    :initarg :ballinfo
    :type sena_msgs-msg:BallInfo
    :initform (cl:make-instance 'sena_msgs-msg:BallInfo)))
)

(cl:defclass OmniVisionInfo (<OmniVisionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OmniVisionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OmniVisionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_msgs-msg:<OmniVisionInfo> is deprecated: use sena_msgs-msg:OmniVisionInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OmniVisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:header-val is deprecated.  Use sena_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ballinfo-val :lambda-list '(m))
(cl:defmethod ballinfo-val ((m <OmniVisionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:ballinfo-val is deprecated.  Use sena_msgs-msg:ballinfo instead.")
  (ballinfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OmniVisionInfo>) ostream)
  "Serializes a message object of type '<OmniVisionInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ballinfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OmniVisionInfo>) istream)
  "Deserializes a message object of type '<OmniVisionInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ballinfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OmniVisionInfo>)))
  "Returns string type for a message object of type '<OmniVisionInfo>"
  "sena_msgs/OmniVisionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OmniVisionInfo)))
  "Returns string type for a message object of type 'OmniVisionInfo"
  "sena_msgs/OmniVisionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OmniVisionInfo>)))
  "Returns md5sum for a message object of type '<OmniVisionInfo>"
  "ff3507e7095313c782bce34c1149ea44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OmniVisionInfo)))
  "Returns md5sum for a message object of type 'OmniVisionInfo"
  "ff3507e7095313c782bce34c1149ea44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OmniVisionInfo>)))
  "Returns full string definition for message of type '<OmniVisionInfo>"
  (cl:format cl:nil "Header header~%BallInfo ballinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sena_msgs/BallInfo~%Header header~%int32  ballinfostate~%bool   pos_known~%bool   velocity_known~%PPoint real_pos~%~%================================================================================~%MSG: sena_msgs/PPoint~%float32 angle~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OmniVisionInfo)))
  "Returns full string definition for message of type 'OmniVisionInfo"
  (cl:format cl:nil "Header header~%BallInfo ballinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sena_msgs/BallInfo~%Header header~%int32  ballinfostate~%bool   pos_known~%bool   velocity_known~%PPoint real_pos~%~%================================================================================~%MSG: sena_msgs/PPoint~%float32 angle~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OmniVisionInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ballinfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OmniVisionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OmniVisionInfo
    (cl:cons ':header (header msg))
    (cl:cons ':ballinfo (ballinfo msg))
))
