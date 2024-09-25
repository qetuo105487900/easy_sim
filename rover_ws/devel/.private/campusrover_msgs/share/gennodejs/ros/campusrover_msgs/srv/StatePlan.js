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

let State = require('../msg/State.js');

//-----------------------------------------------------------

class StatePlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rooms = null;
    }
    else {
      if (initObj.hasOwnProperty('rooms')) {
        this.rooms = initObj.rooms
      }
      else {
        this.rooms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatePlanRequest
    // Serialize message field [rooms]
    bufferOffset = _arraySerializer.string(obj.rooms, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatePlanRequest
    let len;
    let data = new StatePlanRequest(null);
    // Deserialize message field [rooms]
    data.rooms = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.rooms.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/StatePlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13825514ad9d69d104154c9204a5a293';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] rooms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatePlanRequest(null);
    if (msg.rooms !== undefined) {
      resolved.rooms = msg.rooms;
    }
    else {
      resolved.rooms = []
    }

    return resolved;
    }
};

class StatePlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatePlanResponse
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = State.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatePlanResponse
    let len;
    let data = new StatePlanResponse(null);
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = State.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.states.forEach((val) => {
      length += State.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/StatePlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd49a624838470fba7617310f81f56f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    campusrover_msgs/State[] states
    
    
    ================================================================================
    MSG: campusrover_msgs/State
    uint8 STATE_MOVE_TO_ELEVATOR=0
    uint8 STATE_TAKE_ELEVATOR=1
    uint8 STATE_DILIVER_THIS_FLOOR=2
    uint8 STATE_MOVE_TO_ORIGIN=3
    uint8 state
    string[] rooms	
    int8 current_floor
    int8 destination_floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatePlanResponse(null);
    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = State.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = {
  Request: StatePlanRequest,
  Response: StatePlanResponse,
  md5sum() { return '4132620d7901a9a949aa5ed4dc13055a'; },
  datatype() { return 'campusrover_msgs/StatePlan'; }
};
