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

class TargetButtonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_button = null;
    }
    else {
      if (initObj.hasOwnProperty('target_button')) {
        this.target_button = initObj.target_button
      }
      else {
        this.target_button = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetButtonRequest
    // Serialize message field [target_button]
    bufferOffset = _serializer.string(obj.target_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetButtonRequest
    let len;
    let data = new TargetButtonRequest(null);
    // Deserialize message field [target_button]
    data.target_button = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_button);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/TargetButtonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '013dc2c493459992317504da01e1af73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_button
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetButtonRequest(null);
    if (msg.target_button !== undefined) {
      resolved.target_button = msg.target_button;
    }
    else {
      resolved.target_button = ''
    }

    return resolved;
    }
};

class TargetButtonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activate = null;
    }
    else {
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetButtonResponse
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetButtonResponse
    let len;
    let data = new TargetButtonResponse(null);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/TargetButtonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b15627a984ebdd591b2ee87ce75c4d06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool activate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetButtonResponse(null);
    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TargetButtonRequest,
  Response: TargetButtonResponse,
  md5sum() { return '1d1f001af806ced13ac6bfa055fecdf2'; },
  datatype() { return 'campusrover_msgs/TargetButton'; }
};
