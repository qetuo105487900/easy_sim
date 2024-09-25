// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ButtonPose = require('./ButtonPose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ButtonPoses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.button_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('button_poses')) {
        this.button_poses = initObj.button_poses
      }
      else {
        this.button_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonPoses
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [button_poses]
    // Serialize the length for message field [button_poses]
    bufferOffset = _serializer.uint32(obj.button_poses.length, buffer, bufferOffset);
    obj.button_poses.forEach((val) => {
      bufferOffset = ButtonPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonPoses
    let len;
    let data = new ButtonPoses(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [button_poses]
    // Deserialize array length for message field [button_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.button_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.button_poses[i] = ButtonPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.button_poses.forEach((val) => {
      length += ButtonPose.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ButtonPoses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01d1633c8e2cd27ca2e62eb14d3836b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    campusrover_msgs/ButtonPose[] button_poses
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
    MSG: campusrover_msgs/ButtonPose
    string label
    geometry_msgs/Pose pose
    float32 activation
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonPoses(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.button_poses !== undefined) {
      resolved.button_poses = new Array(msg.button_poses.length);
      for (let i = 0; i < resolved.button_poses.length; ++i) {
        resolved.button_poses[i] = ButtonPose.Resolve(msg.button_poses[i]);
      }
    }
    else {
      resolved.button_poses = []
    }

    return resolved;
    }
};

module.exports = ButtonPoses;
