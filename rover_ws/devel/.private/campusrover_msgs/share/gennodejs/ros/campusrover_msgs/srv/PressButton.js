// Auto-generated. Do not edit!

// (in-package campusrover_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PressButtonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_type = null;
    }
    else {
      if (initObj.hasOwnProperty('button_type')) {
        this.button_type = initObj.button_type
      }
      else {
        this.button_type = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PressButtonRequest
    // Serialize message field [button_type]
    bufferOffset = std_msgs.msg.String.serialize(obj.button_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressButtonRequest
    let len;
    let data = new PressButtonRequest(null);
    // Deserialize message field [button_type]
    data.button_type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.button_type);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/PressButtonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2108c1711893849d03c12dc680c3be5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String button_type
    
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
    const resolved = new PressButtonRequest(null);
    if (msg.button_type !== undefined) {
      resolved.button_type = std_msgs.msg.String.Resolve(msg.button_type)
    }
    else {
      resolved.button_type = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class PressButtonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PressButtonResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressButtonResponse
    let len;
    let data = new PressButtonResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/PressButtonResponse';
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
    const resolved = new PressButtonResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: PressButtonRequest,
  Response: PressButtonResponse,
  md5sum() { return 'f2108c1711893849d03c12dc680c3be5'; },
  datatype() { return 'campusrover_msgs/PressButton'; }
};
