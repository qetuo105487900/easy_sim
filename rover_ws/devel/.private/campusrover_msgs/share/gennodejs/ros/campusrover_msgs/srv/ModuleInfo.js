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

let NodeInfo = require('../msg/NodeInfo.js');
let RoomConnected = require('../msg/RoomConnected.js');

//-----------------------------------------------------------

class ModuleInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.floor = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleInfoRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleInfoRequest
    let len;
    let data = new ModuleInfoRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    length += _getByteLength(object.floor);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ModuleInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b15058aba057dc225e6ed360700b819';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    string floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleInfoRequest(null);
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

    return resolved;
    }
};

class ModuleInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.node = null;
      this.connections = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = [];
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
    // Serializes a message object of type ModuleInfoResponse
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [node]
    // Serialize the length for message field [node]
    bufferOffset = _serializer.uint32(obj.node.length, buffer, bufferOffset);
    obj.node.forEach((val) => {
      bufferOffset = NodeInfo.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type ModuleInfoResponse
    let len;
    let data = new ModuleInfoResponse(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [node]
    // Deserialize array length for message field [node]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node[i] = NodeInfo.deserialize(buffer, bufferOffset)
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
    length += _getByteLength(object.frame_id);
    object.node.forEach((val) => {
      length += NodeInfo.getMessageSize(val);
    });
    object.connections.forEach((val) => {
      length += RoomConnected.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ModuleInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd00258d8534156fdecf5fefabc0695e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string frame_id
    campusrover_msgs/NodeInfo[] node
    campusrover_msgs/RoomConnected[] connections
    
    ================================================================================
    MSG: campusrover_msgs/NodeInfo
    string name
    geometry_msgs/Pose pose
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
    MSG: campusrover_msgs/RoomConnected
    string[] connection
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleInfoResponse(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.node !== undefined) {
      resolved.node = new Array(msg.node.length);
      for (let i = 0; i < resolved.node.length; ++i) {
        resolved.node[i] = NodeInfo.Resolve(msg.node[i]);
      }
    }
    else {
      resolved.node = []
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

module.exports = {
  Request: ModuleInfoRequest,
  Response: ModuleInfoResponse,
  md5sum() { return '55d2c427bdf7bbce8ecb662848fd46e6'; },
  datatype() { return 'campusrover_msgs/ModuleInfo'; }
};
