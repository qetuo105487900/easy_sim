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

class ActionChargingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.floor = null;
      this.charging_pile_id = null;
      this.status = null;
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
      if (initObj.hasOwnProperty('charging_pile_id')) {
        this.charging_pile_id = initObj.charging_pile_id
      }
      else {
        this.charging_pile_id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionChargingRequest
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.int32(obj.floor, buffer, bufferOffset);
    // Serialize message field [charging_pile_id]
    bufferOffset = _serializer.uint8(obj.charging_pile_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionChargingRequest
    let len;
    let data = new ActionChargingRequest(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charging_pile_id]
    data.charging_pile_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ActionChargingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5168c6de9ca46f7222d4c5d4011956cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CONNECTING=1
    uint8 UNCONNECTING=2
    string location
    int32 floor
    uint8 charging_pile_id
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionChargingRequest(null);
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

    if (msg.charging_pile_id !== undefined) {
      resolved.charging_pile_id = msg.charging_pile_id;
    }
    else {
      resolved.charging_pile_id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
ActionChargingRequest.Constants = {
  CONNECTING: 1,
  UNCONNECTING: 2,
}

class ActionChargingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionChargingResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionChargingResponse
    let len;
    let data = new ActionChargingResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ActionChargingResponse';
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
    const resolved = new ActionChargingResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ActionChargingRequest,
  Response: ActionChargingResponse,
  md5sum() { return '5168c6de9ca46f7222d4c5d4011956cc'; },
  datatype() { return 'campusrover_msgs/ActionCharging'; }
};
