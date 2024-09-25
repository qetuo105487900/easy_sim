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

class InitFloorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.init_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('init_floor')) {
        this.init_floor = initObj.init_floor
      }
      else {
        this.init_floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitFloorRequest
    // Serialize message field [init_floor]
    bufferOffset = _serializer.int8(obj.init_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitFloorRequest
    let len;
    let data = new InitFloorRequest(null);
    // Deserialize message field [init_floor]
    data.init_floor = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/InitFloorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff7605597ae53414f57ec4bc282ae9d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 init_floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitFloorRequest(null);
    if (msg.init_floor !== undefined) {
      resolved.init_floor = msg.init_floor;
    }
    else {
      resolved.init_floor = 0
    }

    return resolved;
    }
};

class InitFloorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitFloorResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitFloorResponse
    let len;
    let data = new InitFloorResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/InitFloorResponse';
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
    const resolved = new InitFloorResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: InitFloorRequest,
  Response: InitFloorResponse,
  md5sum() { return 'ff7605597ae53414f57ec4bc282ae9d3'; },
  datatype() { return 'campusrover_msgs/InitFloor'; }
};
