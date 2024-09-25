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

class ElevatorControlInterfaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_multi = null;
      this.elevator_id = null;
      this.building = null;
      this.init_floor = null;
      this.target_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_multi')) {
        this.enable_multi = initObj.enable_multi
      }
      else {
        this.enable_multi = false;
      }
      if (initObj.hasOwnProperty('elevator_id')) {
        this.elevator_id = initObj.elevator_id
      }
      else {
        this.elevator_id = '';
      }
      if (initObj.hasOwnProperty('building')) {
        this.building = initObj.building
      }
      else {
        this.building = '';
      }
      if (initObj.hasOwnProperty('init_floor')) {
        this.init_floor = initObj.init_floor
      }
      else {
        this.init_floor = 0;
      }
      if (initObj.hasOwnProperty('target_floor')) {
        this.target_floor = initObj.target_floor
      }
      else {
        this.target_floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorControlInterfaceRequest
    // Serialize message field [enable_multi]
    bufferOffset = _serializer.bool(obj.enable_multi, buffer, bufferOffset);
    // Serialize message field [elevator_id]
    bufferOffset = _serializer.string(obj.elevator_id, buffer, bufferOffset);
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [init_floor]
    bufferOffset = _serializer.int8(obj.init_floor, buffer, bufferOffset);
    // Serialize message field [target_floor]
    bufferOffset = _serializer.int8(obj.target_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorControlInterfaceRequest
    let len;
    let data = new ElevatorControlInterfaceRequest(null);
    // Deserialize message field [enable_multi]
    data.enable_multi = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [elevator_id]
    data.elevator_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [init_floor]
    data.init_floor = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [target_floor]
    data.target_floor = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.elevator_id);
    length += _getByteLength(object.building);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorControlInterfaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '921e2fec69ab3d7333541f6289522f53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable_multi
    string elevator_id
    string building
    int8 init_floor
    int8 target_floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorControlInterfaceRequest(null);
    if (msg.enable_multi !== undefined) {
      resolved.enable_multi = msg.enable_multi;
    }
    else {
      resolved.enable_multi = false
    }

    if (msg.elevator_id !== undefined) {
      resolved.elevator_id = msg.elevator_id;
    }
    else {
      resolved.elevator_id = ''
    }

    if (msg.building !== undefined) {
      resolved.building = msg.building;
    }
    else {
      resolved.building = ''
    }

    if (msg.init_floor !== undefined) {
      resolved.init_floor = msg.init_floor;
    }
    else {
      resolved.init_floor = 0
    }

    if (msg.target_floor !== undefined) {
      resolved.target_floor = msg.target_floor;
    }
    else {
      resolved.target_floor = 0
    }

    return resolved;
    }
};

class ElevatorControlInterfaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorControlInterfaceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorControlInterfaceResponse
    let len;
    let data = new ElevatorControlInterfaceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorControlInterfaceResponse';
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
    const resolved = new ElevatorControlInterfaceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ElevatorControlInterfaceRequest,
  Response: ElevatorControlInterfaceResponse,
  md5sum() { return '921e2fec69ab3d7333541f6289522f53'; },
  datatype() { return 'campusrover_msgs/ElevatorControlInterface'; }
};
