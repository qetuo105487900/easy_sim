// Auto-generated. Do not edit!

// (in-package campusrover_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Room = require('../msg/Room.js');
let RoomConnected = require('../msg/RoomConnected.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MapInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.floor = null;
      this.tf = null;
      this.rooms = null;
      this.connections = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = 0;
      }
      if (initObj.hasOwnProperty('tf')) {
        this.tf = initObj.tf
      }
      else {
        this.tf = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('rooms')) {
        this.rooms = initObj.rooms
      }
      else {
        this.rooms = [];
      }
      if (initObj.hasOwnProperty('connections')) {
        this.connections = initObj.connections
      }
      else {
        this.connections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInfoRequest
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.int32(obj.floor, buffer, bufferOffset);
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.tf, buffer, bufferOffset);
    // Serialize message field [rooms]
    // Serialize the length for message field [rooms]
    bufferOffset = _serializer.uint32(obj.rooms.length, buffer, bufferOffset);
    obj.rooms.forEach((val) => {
      bufferOffset = Room.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [connections]
    // Serialize the length for message field [connections]
    bufferOffset = _serializer.uint32(obj.connections.length, buffer, bufferOffset);
    obj.connections.forEach((val) => {
      bufferOffset = RoomConnected.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInfoRequest
    let len;
    let data = new MapInfoRequest(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [rooms]
    // Deserialize array length for message field [rooms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rooms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rooms[i] = Room.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [connections]
    // Deserialize array length for message field [connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.connections[i] = RoomConnected.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.tf);
    object.rooms.forEach((val) => {
      length += Room.getMessageSize(val);
    });
    object.connections.forEach((val) => {
      length += RoomConnected.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64495e6b9a1d310cb07a4f1c52ccab95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location
    int32 floor
    geometry_msgs/TransformStamped tf
    campusrover_msgs/Room[] rooms
    campusrover_msgs/RoomConnected[] connections
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    MSG: campusrover_msgs/Room
    string room
    geometry_msgs/Pose  position
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
    MSG: campusrover_msgs/RoomConnected
    string[] connection
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapInfoRequest(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = 0
    }

    if (msg.tf !== undefined) {
      resolved.tf = geometry_msgs.msg.TransformStamped.Resolve(msg.tf)
    }
    else {
      resolved.tf = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.rooms !== undefined) {
      resolved.rooms = new Array(msg.rooms.length);
      for (let i = 0; i < resolved.rooms.length; ++i) {
        resolved.rooms[i] = Room.Resolve(msg.rooms[i]);
      }
    }
    else {
      resolved.rooms = []
    }

    if (msg.connections !== undefined) {
      resolved.connections = new Array(msg.connections.length);
      for (let i = 0; i < resolved.connections.length; ++i) {
        resolved.connections[i] = RoomConnected.Resolve(msg.connections[i]);
      }
    }
    else {
      resolved.connections = []
    }

    return resolved;
    }
};

class MapInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInfoResponse
    // Serialize message field [code]
    bufferOffset = _serializer.string(obj.code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInfoResponse
    let len;
    let data = new MapInfoResponse(null);
    // Deserialize message field [code]
    data.code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.code);
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '734fad93dcf1515c9778b32dbfa50cfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapInfoResponse(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MapInfoRequest,
  Response: MapInfoResponse,
  md5sum() { return '741eabcb755f63b90a295f90af3c64c8'; },
  datatype() { return 'campusrover_msgs/MapInfo'; }
};
