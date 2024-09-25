// Auto-generated. Do not edit!

// (in-package campusrover_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MapClosestLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.floor = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('building')) {
        this.building = initObj.building
      }
      else {
        this.building = '';
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = '';
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapClosestLocationRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapClosestLocationRequest
    let len;
    let data = new MapClosestLocationRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    length += _getByteLength(object.floor);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.robot_pose);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapClosestLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81e78f1ded82529e3ab81611cc235762';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    string floor
    geometry_msgs/PoseStamped robot_pose
    
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
    const resolved = new MapClosestLocationRequest(null);
    if (msg.building !== undefined) {
      resolved.building = msg.building;
    }
    else {
      resolved.building = ''
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = ''
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class MapClosestLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.closest_point = null;
    }
    else {
      if (initObj.hasOwnProperty('closest_point')) {
        this.closest_point = initObj.closest_point
      }
      else {
        this.closest_point = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapClosestLocationResponse
    // Serialize message field [closest_point]
    bufferOffset = _serializer.string(obj.closest_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapClosestLocationResponse
    let len;
    let data = new MapClosestLocationResponse(null);
    // Deserialize message field [closest_point]
    data.closest_point = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.closest_point);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapClosestLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0e21e8f298a097dccdd7714dd98bff6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string closest_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapClosestLocationResponse(null);
    if (msg.closest_point !== undefined) {
      resolved.closest_point = msg.closest_point;
    }
    else {
      resolved.closest_point = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MapClosestLocationRequest,
  Response: MapClosestLocationResponse,
  md5sum() { return '958ccb3e3caf31c023d2c553e7c87d27'; },
  datatype() { return 'campusrover_msgs/MapClosestLocation'; }
};
