; Auto-generated. Do not edit!


(cl:in-package sena_msgs-msg)


;//! \htmlinclude BallInfo.msg.html

(cl:defclass <BallInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ballinfostate
    :reader ballinfostate
    :initarg :ballinfostate
    :type cl:integer
    :initform 0)
   (pos_known
    :reader pos_known
    :initarg :pos_known
    :type cl:boolean
    :initform cl:nil)
   (velocity_known
    :reader velocity_known
    :initarg :velocity_known
    :type cl:boolean
    :initform cl:nil)
   (real_pos
    :reader real_pos
    :initarg :real_pos
    :type sena_msgs-msg:PPoint
    :initform (cl:make-instance 'sena_msgs-msg:PPoint)))
)

(cl:defclass BallInfo (<BallInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_msgs-msg:<BallInfo> is deprecated: use sena_msgs-msg:BallInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:header-val is deprecated.  Use sena_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ballinfostate-val :lambda-list '(m))
(cl:defmethod ballinfostate-val ((m <BallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:ballinfostate-val is deprecated.  Use sena_msgs-msg:ballinfostate instead.")
  (ballinfostate m))

(cl:ensure-generic-function 'pos_known-val :lambda-list '(m))
(cl:defmethod pos_known-val ((m <BallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:pos_known-val is deprecated.  Use sena_msgs-msg:pos_known instead.")
  (pos_known m))

(cl:ensure-generic-function 'velocity_known-val :lambda-list '(m))
(cl:defmethod velocity_known-val ((m <BallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:velocity_known-val is deprecated.  Use sena_msgs-msg:velocity_known instead.")
  (velocity_known m))

(cl:ensure-generic-function 'real_pos-val :lambda-list '(m))
(cl:defmethod real_pos-val ((m <BallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sena_msgs-msg:real_pos-val is deprecated.  Use sena_msgs-msg:real_pos instead.")
  (real_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallInfo>) ostream)
  "Serializes a message object of type '<BallInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ballinfostate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_known) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_known) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallInfo>) istream)
  "Deserializes a message object of type '<BallInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ballinfostate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'pos_known) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_known) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallInfo>)))
  "Returns string type for a message object of type '<BallInfo>"
  "sena_msgs/BallInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallInfo)))
  "Returns string type for a message object of type 'BallInfo"
  "sena_msgs/BallInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallInfo>)))
  "Returns md5sum for a message object of type '<BallInfo>"
  "842fb4e2989d0235594fa714af57acbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallInfo)))
  "Returns md5sum for a message object of type 'BallInfo"
  "842fb4e2989d0235594fa714af57acbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallInfo>)))
  "Returns full string definition for message of type '<BallInfo>"
  (cl:format cl:nil "Header header~%int32  ballinfostate~%bool   pos_known~%bool   velocity_known~%PPoint real_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sena_msgs/PPoint~%float32 angle~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallInfo)))
  "Returns full string definition for message of type 'BallInfo"
  (cl:format cl:nil "Header header~%int32  ballinfostate~%bool   pos_known~%bool   velocity_known~%PPoint real_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sena_msgs/PPoint~%float32 angle~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BallInfo
    (cl:cons ':header (header msg))
    (cl:cons ':ballinfostate (ballinfostate msg))
    (cl:cons ':pos_known (pos_known msg))
    (cl:cons ':velocity_known (velocity_known msg))
    (cl:cons ':real_pos (real_pos msg))
))
