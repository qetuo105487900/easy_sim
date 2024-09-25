// Auto-generated. Do not edit!

// (in-package campusrover_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class RoutingPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.origin = null;
      this.destination = null;
    }
    else {
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = '';
      }
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingPathRequest
    // Serialize message field [origin]
    bufferOffset = _serializer.string(obj.origin, buffer, bufferOffset);
    // Serialize message field [destination]
    bufferOffset = _arraySerializer.string(obj.destination, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingPathRequest
    let len;
    let data = new RoutingPathRequest(null);
    // Deserialize message field [origin]
    data.origin = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destination]
    data.destination = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.origin);
    object.destination.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/RoutingPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77229e9944c3c5be734d31593688977f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string origin
    string[] destination
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingPathRequest(null);
    if (msg.origin !== undefined) {
      resolved.origin = msg.origin;
    }
    else {
      resolved.origin = ''
    }

    if (msg.destination !== undefined) {
      resolved.destination = msg.destination;
    }
    else {
      resolved.destination = []
    }

    return resolved;
    }
};

class RoutingPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.routing = null;
    }
    else {
      if (initObj.hasOwnProperty('routing')) {
        this.routing = initObj.routing
      }
      else {
        this.routing = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingPathResponse
    // Serialize message field [routing]
    // Serialize the length for message field [routing]
    bufferOffset = _serializer.uint32(obj.routing.length, buffer, bufferOffset);
    obj.routing.forEach((val) => {
      bufferOffset = nav_msgs.msg.Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingPathResponse
    let len;
    let data = new RoutingPathResponse(null);
    // Deserialize message field [routing]
    // Deserialize array length for message field [routing]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.routing = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.routing[i] = nav_msgs.msg.Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.routing.forEach((val) => {
      length += nav_msgs.msg.Path.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/RoutingPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b4c6290774e714dd0d9cc507876339';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path[] routing
    
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new RoutingPathResponse(null);
    if (msg.routing !== undefined) {
      resolved.routing = new Array(msg.routing.length);
      for (let i = 0; i < resolved.routing.length; ++i) {
        resolved.routing[i] = nav_msgs.msg.Path.Resolve(msg.routing[i]);
      }
    }
    else {
      resolved.routing = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RoutingPathRequest,
  Response: RoutingPathResponse,
  md5sum() { return '2572309a61917f225d08d462c3a7a191'; },
  datatype() { return 'campusrover_msgs/RoutingPath'; }
};
