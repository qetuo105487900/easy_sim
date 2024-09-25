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

class ActionParkingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_mode = null;
      this.max_linear_vel = null;
      this.max_angular_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('max_linear_vel')) {
        this.max_linear_vel = initObj.max_linear_vel
      }
      else {
        this.max_linear_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_vel')) {
        this.max_angular_vel = initObj.max_angular_vel
      }
      else {
        this.max_angular_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionParkingRequest
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [max_linear_vel]
    bufferOffset = _serializer.float32(obj.max_linear_vel, buffer, bufferOffset);
    // Serialize message field [max_angular_vel]
    bufferOffset = _serializer.float32(obj.max_angular_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionParkingRequest
    let len;
    let data = new ActionParkingRequest(null);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [max_linear_vel]
    data.max_linear_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_angular_vel]
    data.max_angular_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ActionParkingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a58cbdc0eba1671ad4368e60a958b8d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CONTROL_MODE_DEFAULT=0
    uint8 CONTROL_MODE_PID=1
    uint8 CONTROL_MODE_REVERSE=2
    uint8 control_mode
    float32 max_linear_vel
    float32 max_angular_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionParkingRequest(null);
    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.max_linear_vel !== undefined) {
      resolved.max_linear_vel = msg.max_linear_vel;
    }
    else {
      resolved.max_linear_vel = 0.0
    }

    if (msg.max_angular_vel !== undefined) {
      resolved.max_angular_vel = msg.max_angular_vel;
    }
    else {
      resolved.max_angular_vel = 0.0
    }

    return resolved;
    }
};

// Constants for message
ActionParkingRequest.Constants = {
  CONTROL_MODE_DEFAULT: 0,
  CONTROL_MODE_PID: 1,
  CONTROL_MODE_REVERSE: 2,
}

class ActionParkingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionParkingResponse
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionParkingResponse
    let len;
    let data = new ActionParkingResponse(null);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ActionParkingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d96ed730776804754140b85e64c862e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionParkingResponse(null);
    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ActionParkingRequest,
  Response: ActionParkingResponse,
  md5sum() { return 'b2141ab3a90aab97223754872a3f8193'; },
  datatype() { return 'campusrover_msgs/ActionParking'; }
};
