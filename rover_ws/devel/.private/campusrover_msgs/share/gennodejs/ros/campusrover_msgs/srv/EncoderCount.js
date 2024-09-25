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

class EncoderCountRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderCountRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderCountRequest
    let len;
    let data = new EncoderCountRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/EncoderCountRequest';
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
    const resolved = new EncoderCountRequest(null);
    return resolved;
    }
};

class EncoderCountResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_count = null;
      this.right_count = null;
    }
    else {
      if (initObj.hasOwnProperty('left_count')) {
        this.left_count = initObj.left_count
      }
      else {
        this.left_count = 0;
      }
      if (initObj.hasOwnProperty('right_count')) {
        this.right_count = initObj.right_count
      }
      else {
        this.right_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderCountResponse
    // Serialize message field [left_count]
    bufferOffset = _serializer.int64(obj.left_count, buffer, bufferOffset);
    // Serialize message field [right_count]
    bufferOffset = _serializer.int64(obj.right_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderCountResponse
    let len;
    let data = new EncoderCountResponse(null);
    // Deserialize message field [left_count]
    data.left_count = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [right_count]
    data.right_count = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/EncoderCountResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '310f2c2a4adfa0f8fc31fa2482448b81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 left_count
    int64 right_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderCountResponse(null);
    if (msg.left_count !== undefined) {
      resolved.left_count = msg.left_count;
    }
    else {
      resolved.left_count = 0
    }

    if (msg.right_count !== undefined) {
      resolved.right_count = msg.right_count;
    }
    else {
      resolved.right_count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: EncoderCountRequest,
  Response: EncoderCountResponse,
  md5sum() { return '310f2c2a4adfa0f8fc31fa2482448b81'; },
  datatype() { return 'campusrover_msgs/EncoderCount'; }
};
