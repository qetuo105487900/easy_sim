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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ButtonTrackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.button_name = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('button_name')) {
        this.button_name = initObj.button_name
      }
      else {
        this.button_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonTrackingRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [button_name]
    bufferOffset = _serializer.string(obj.button_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonTrackingRequest
    let len;
    let data = new ButtonTrackingRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [button_name]
    data.button_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.button_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonTrackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd8a111cb143e37099156d7c341fa448';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    string button_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonTrackingRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.button_name !== undefined) {
      resolved.button_name = msg.button_name;
    }
    else {
      resolved.button_name = ''
    }

    return resolved;
    }
};

class ButtonTrackingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.empty = null;
    }
    else {
      if (initObj.hasOwnProperty('empty')) {
        this.empty = initObj.empty
      }
      else {
        this.empty = new std_msgs.msg.Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonTrackingResponse
    // Serialize message field [empty]
    bufferOffset = std_msgs.msg.Empty.serialize(obj.empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonTrackingResponse
    let len;
    let data = new ButtonTrackingResponse(null);
    // Deserialize message field [empty]
    data.empty = std_msgs.msg.Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonTrackingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aac6c697d5414bc0fcede8c33981d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Empty empty
    
    ================================================================================
    MSG: std_msgs/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonTrackingResponse(null);
    if (msg.empty !== undefined) {
      resolved.empty = std_msgs.msg.Empty.Resolve(msg.empty)
    }
    else {
      resolved.empty = new std_msgs.msg.Empty()
    }

    return resolved;
    }
};

module.exports = {
  Request: ButtonTrackingRequest,
  Response: ButtonTrackingResponse,
  md5sum() { return '61b485ea07ed1b39485bf792e13eef24'; },
  datatype() { return 'campusrover_msgs/ButtonTracking'; }
};
