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

class PoseWithId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.floor = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = new std_msgs.msg.Int16();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseWithId
    // Serialize message field [id]
    bufferOffset = std_msgs.msg.String.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.String.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = std_msgs.msg.Int16.serialize(obj.floor, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseWithId
    let len;
    let data = new PoseWithId(null);
    // Deserialize message field [id]
    data.id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = std_msgs.msg.Int16.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.id);
    length += std_msgs.msg.String.getMessageSize(object.type);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/PoseWithId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ea613eca72c87e9e2e85790826a3bbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String id
    std_msgs/String type
    std_msgs/Int16 floor
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
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
    const resolved = new PoseWithId(null);
    if (msg.id !== undefined) {
      resolved.id = std_msgs.msg.String.Resolve(msg.id)
    }
    else {
      resolved.id = new std_msgs.msg.String()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.String.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.String()
    }

    if (msg.floor !== undefined) {
      resolved.floor = std_msgs.msg.Int16.Resolve(msg.floor)
    }
    else {
      resolved.floor = new std_msgs.msg.Int16()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = PoseWithId;
