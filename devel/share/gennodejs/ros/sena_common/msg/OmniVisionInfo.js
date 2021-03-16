// Auto-generated. Do not edit!

// (in-package sena_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BallInfo = require('./BallInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OmniVisionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ballinfo = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ballinfo')) {
        this.ballinfo = initObj.ballinfo
      }
      else {
        this.ballinfo = new BallInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OmniVisionInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ballinfo]
    bufferOffset = BallInfo.serialize(obj.ballinfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OmniVisionInfo
    let len;
    let data = new OmniVisionInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ballinfo]
    data.ballinfo = BallInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += BallInfo.getMessageSize(object.ballinfo);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sena_common/OmniVisionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4eaad8c4086a32cd112b24e241236839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    MSG: sena_common/BallInfo
    Header header
    int32    ballinfostate
    PPoint   real_pos
    bool     pos_known
    bool     velocity_known
    
    ================================================================================
    MSG: sena_common/PPoint
    float32 angle
    float32 radius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OmniVisionInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ballinfo !== undefined) {
      resolved.ballinfo = BallInfo.Resolve(msg.ballinfo)
    }
    else {
      resolved.ballinfo = new BallInfo()
    }

    return resolved;
    }
};

module.exports = OmniVisionInfo;
