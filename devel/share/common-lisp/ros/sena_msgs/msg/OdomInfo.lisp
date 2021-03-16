; Auto-generated. Do not edit!


(cl:in-package sena_msgs-msg)


;//! \htmlinclude OdomInfo.msg.html

(cl:defclass <OdomInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Vx
    :reader Vx
    :initarg :Vx
    :type cl:float
    :initform 0.0)
   (Vy
    :reader Vy
    :initarg :Vy
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (RobotStuck
    :reader RobotStuck
    :initarg :RobotStuck
    :type cl:boolean
    :initform cl:nil)
   (PowerState
    :reader PowerState
    :initarg :PowerState
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OdomInfo (<OdomInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_msgs-msg:<OdomInfo> is deprecated: use sena_msgs-msg:OdomInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:header-val is deprecated.  Use sena_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Vx-val :lambda-list '(m))
(cl:defmethod Vx-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:Vx-val is deprecated.  Use sena_msgs-msg:Vx instead.")
  (Vx m))

(cl:ensure-generic-function 'Vy-val :lambda-list '(m))
(cl:defmethod Vy-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:Vy-val is deprecated.  Use sena_msgs-msg:Vy instead.")
  (Vy m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:w-val is deprecated.  Use sena_msgs-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'RobotStuck-val :lambda-list '(m))
(cl:defmethod RobotStuck-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:RobotStuck-val is deprecated.  Use sena_msgs-msg:RobotStuck instead.")
  (RobotStuck m))

(cl:ensure-generic-function 'PowerState-val :lambda-list '(m))
(cl:defmethod PowerState-val ((m <OdomInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:PowerState-val is deprecated.  Use sena_msgs-msg:PowerState instead.")
  (PowerState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomInfo>) ostream)
  "Serializes a message object of type '<OdomInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RobotStuck) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PowerState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomInfo>) istream)
  "Deserializes a message object of type '<OdomInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'RobotStuck) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PowerState) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomInfo>)))
  "Returns string type for a message object of type '<OdomInfo>"
  "sena_msgs/OdomInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomInfo)))
  "Returns string type for a message object of type 'OdomInfo"
  "sena_msgs/OdomInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomInfo>)))
  "Returns md5sum for a message object of type '<OdomInfo>"
  "b4f534aa8c080899ef112a410cc2c113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomInfo)))
  "Returns md5sum for a message object of type 'OdomInfo"
  "b4f534aa8c080899ef112a410cc2c113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomInfo>)))
  "Returns full string definition for message of type '<OdomInfo>"
  (cl:format cl:nil "Header header~%float32 Vx~%float32 Vy~%float32 w~%bool    RobotStuck~%bool    PowerState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomInfo)))
  "Returns full string definition for message of type 'OdomInfo"
  (cl:format cl:nil "Header header~%float32 Vx~%float32 Vy~%float32 w~%bool    RobotStuck~%bool    PowerState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomInfo
    (cl:cons ':header (header msg))
    (cl:cons ':Vx (Vx msg))
    (cl:cons ':Vy (Vy msg))
    (cl:cons ':w (w msg))
    (cl:cons ':RobotStuck (RobotStuck msg))
    (cl:cons ':PowerState (PowerState msg))
))
