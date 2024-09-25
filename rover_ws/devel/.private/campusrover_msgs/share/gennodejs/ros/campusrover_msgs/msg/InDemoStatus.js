// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseWithId = require('./PoseWithId.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class InDemoStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.controller = null;
      this.target_pose_data = null;
      this.current_pose_data = null;
      this.mid_target_pose_data = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('target_pose_data')) {
        this.target_pose_data = initObj.target_pose_data
      }
      else {
        this.target_pose_data = new PoseWithId();
      }
      if (initObj.hasOwnProperty('current_pose_data')) {
        this.current_pose_data = initObj.current_pose_data
      }
      else {
        this.current_pose_data = new PoseWithId();
      }
      if (initObj.hasOwnProperty('mid_target_pose_data')) {
        this.mid_target_pose_data = initObj.mid_target_pose_data
      }
      else {
        this.mid_target_pose_data = new PoseWithId();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InDemoStatus
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.String.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [controller]
    bufferOffset = std_msgs.msg.String.serialize(obj.controller, buffer, bufferOffset);
    // Serialize message field [target_pose_data]
    bufferOffset = PoseWithId.serialize(obj.target_pose_data, buffer, bufferOffset);
    // Serialize message field [current_pose_data]
    bufferOffset = PoseWithId.serialize(obj.current_pose_data, buffer, bufferOffset);
    // Serialize message field [mid_target_pose_data]
    bufferOffset = PoseWithId.serialize(obj.mid_target_pose_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InDemoStatus
    let len;
    let data = new InDemoStatus(null);
    // Deserialize message field [status]
    data.status = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller]
    data.controller = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_pose_data]
    data.target_pose_data = PoseWithId.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_pose_data]
    data.current_pose_data = PoseWithId.deserialize(buffer, bufferOffset);
    // Deserialize message field [mid_target_pose_data]
    data.mid_target_pose_data = PoseWithId.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.status);
    length += std_msgs.msg.String.getMessageSize(object.controller);
    length += PoseWithId.getMessageSize(object.target_pose_data);
    length += PoseWithId.getMessageSize(object.current_pose_data);
    length += PoseWithId.getMessageSize(object.mid_target_pose_data);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/InDemoStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34ab88de0bd0120458bb8839561e2f23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String status
    std_msgs/String controller
    campusrover_msgs/PoseWithId target_pose_data
    campusrover_msgs/PoseWithId current_pose_data
    campusrover_msgs/PoseWithId mid_target_pose_data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: campusrover_msgs/PoseWithId
    std_msgs/String id
    std_msgs/String type
    std_msgs/Int16 floor
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: std_msgs/Int16
    int16 data
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new InDemoStatus(null);
    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.String.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.String()
    }

    if (msg.controller !== undefined) {
      resolved.controller = std_msgs.msg.String.Resolve(msg.controller)
    }
    else {
      resolved.controller = new std_msgs.msg.String()
    }

    if (msg.target_pose_data !== undefined) {
      resolved.target_pose_data = PoseWithId.Resolve(msg.target_pose_data)
    }
    else {
      resolved.target_pose_data = new PoseWithId()
    }

    if (msg.current_pose_data !== undefined) {
      resolved.current_pose_data = PoseWithId.Resolve(msg.current_pose_data)
    }
    else {
      resolved.current_pose_data = new PoseWithId()
    }

    if (msg.mid_target_pose_data !== undefined) {
      resolved.mid_target_pose_data = PoseWithId.Resolve(msg.mid_target_pose_data)
    }
    else {
      resolved.mid_target_pose_data = new PoseWithId()
    }

    return resolved;
    }
};

module.exports = InDemoStatus;
