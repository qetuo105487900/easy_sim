// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DoorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.doors_pose = null;
      this.doors_status = null;
    }
    else {
      if (initObj.hasOwnProperty('doors_pose')) {
        this.doors_pose = initObj.doors_pose
      }
      else {
        this.doors_pose = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('doors_status')) {
        this.doors_status = initObj.doors_status
      }
      else {
        this.doors_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorStatus
    // Serialize message field [doors_pose]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.doors_pose, buffer, bufferOffset);
    // Serialize message field [doors_status]
    // Serialize the length for message field [doors_status]
    bufferOffset = _serializer.uint32(obj.doors_status.length, buffer, bufferOffset);
    obj.doors_status.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorStatus
    let len;
    let data = new DoorStatus(null);
    // Deserialize message field [doors_pose]
    data.doors_pose = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [doors_status]
    // Deserialize array length for message field [doors_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.doors_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.doors_status[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.doors_pose);
    object.doors_status.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/DoorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '392ed9cecb7f2eb557a135d59e4111da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray doors_pose
    
    std_msgs/String[] doors_status
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorStatus(null);
    if (msg.doors_pose !== undefined) {
      resolved.doors_pose = geometry_msgs.msg.PoseArray.Resolve(msg.doors_pose)
    }
    else {
      resolved.doors_pose = new geometry_msgs.msg.PoseArray()
    }

    if (msg.doors_status !== undefined) {
      resolved.doors_status = new Array(msg.doors_status.length);
      for (let i = 0; i < resolved.doors_status.length; ++i) {
        resolved.doors_status[i] = std_msgs.msg.String.Resolve(msg.doors_status[i]);
      }
    }
    else {
      resolved.doors_status = []
    }

    return resolved;
    }
};

module.exports = DoorStatus;
