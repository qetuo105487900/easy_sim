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


//-----------------------------------------------------------

class demoPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_point = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = '';
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type demoPathRequest
    // Serialize message field [start_point]
    bufferOffset = _serializer.string(obj.start_point, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = _serializer.string(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type demoPathRequest
    let len;
    let data = new demoPathRequest(null);
    // Deserialize message field [start_point]
    data.start_point = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.start_point);
    length += _getByteLength(object.end_point);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/demoPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bcb23441037678d1306415ad104d0ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string start_point
    string end_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new demoPathRequest(null);
    if (msg.start_point !== undefined) {
      resolved.start_point = msg.start_point;
    }
    else {
      resolved.start_point = ''
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = msg.end_point;
    }
    else {
      resolved.end_point = ''
    }

    return resolved;
    }
};

class demoPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type demoPathResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type demoPathResponse
    let len;
    let data = new demoPathResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/demoPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new demoPathResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: demoPathRequest,
  Response: demoPathResponse,
  md5sum() { return '8bcb23441037678d1306415ad104d0ec'; },
  datatype() { return 'campusrover_msgs/demoPath'; }
};
