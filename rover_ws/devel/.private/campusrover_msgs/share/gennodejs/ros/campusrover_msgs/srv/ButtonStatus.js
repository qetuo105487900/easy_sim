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

class ButtonStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_status = null;
    }
    else {
      if (initObj.hasOwnProperty('button_status')) {
        this.button_status = initObj.button_status
      }
      else {
        this.button_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonStatusRequest
    // Serialize message field [button_status]
    bufferOffset = _serializer.bool(obj.button_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonStatusRequest
    let len;
    let data = new ButtonStatusRequest(null);
    // Deserialize message field [button_status]
    data.button_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eabfc9879043ecc49b3481670b2286f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool button_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonStatusRequest(null);
    if (msg.button_status !== undefined) {
      resolved.button_status = msg.button_status;
    }
    else {
      resolved.button_status = false
    }

    return resolved;
    }
};

class ButtonStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonStatusResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonStatusResponse
    let len;
    let data = new ButtonStatusResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonStatusResponse';
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
    const resolved = new ButtonStatusResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ButtonStatusRequest,
  Response: ButtonStatusResponse,
  md5sum() { return '5eabfc9879043ecc49b3481670b2286f'; },
  datatype() { return 'campusrover_msgs/ButtonStatus'; }
};
