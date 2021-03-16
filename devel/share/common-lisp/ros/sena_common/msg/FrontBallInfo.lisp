; Auto-generated. Do not edit!


(cl:in-package sena_common-msg)


;//! \htmlinclude FrontBallInfo.msg.html

(cl:defclass <FrontBallInfo> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FrontBallInfo (<FrontBallInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontBallInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontBallInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sena_common-msg:<FrontBallInfo> is deprecated: use sena_common-msg:FrontBallInfo instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontBallInfo>) ostream)
  "Serializes a message object of type '<FrontBallInfo>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontBallInfo>) istream)
  "Deserializes a message object of type '<FrontBallInfo>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontBallInfo>)))
  "Returns string type for a message object of type '<FrontBallInfo>"
  "sena_common/FrontBallInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontBallInfo)))
  "Returns string type for a message object of type 'FrontBallInfo"
  "sena_common/FrontBallInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontBallInfo>)))
  "Returns md5sum for a message object of type '<FrontBallInfo>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontBallInfo)))
  "Returns md5sum for a message object of type 'FrontBallInfo"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontBallInfo>)))
  "Returns full string definition for message of type '<FrontBallInfo>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontBallInfo)))
  "Returns full string definition for message of type 'FrontBallInfo"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontBallInfo>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontBallInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontBallInfo
))
