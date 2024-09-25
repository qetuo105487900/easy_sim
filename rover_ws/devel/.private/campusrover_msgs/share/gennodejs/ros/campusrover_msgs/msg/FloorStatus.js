// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FloorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.init_pressure = null;
      this.init_floor = null;
      this.current_pressure = null;
      this.current_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('init_pressure')) {
        this.init_pressure = initObj.init_pressure
      }
      else {
        this.init_pressure = 0;
      }
      if (initObj.hasOwnProperty('init_floor')) {
        this.init_floor = initObj.init_floor
      }
      else {
        this.init_floor = 0;
      }
      if (initObj.hasOwnProperty('current_pressure')) {
        this.current_pressure = initObj.current_pressure
      }
      else {
        this.current_pressure = 0;
      }
      if (initObj.hasOwnProperty('current_floor')) {
        this.current_floor = initObj.current_floor
      }
      else {
        this.current_floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FloorStatus
    // Serialize message field [init_pressure]
    bufferOffset = _serializer.int32(obj.init_pressure, buffer, bufferOffset);
    // Serialize message field [init_floor]
    bufferOffset = _serializer.int32(obj.init_floor, buffer, bufferOffset);
    // Serialize message field [current_pressure]
    bufferOffset = _serializer.int32(obj.current_pressure, buffer, bufferOffset);
    // Serialize message field [current_floor]
    bufferOffset = _serializer.int32(obj.current_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FloorStatus
    let len;
    let data = new FloorStatus(null);
    // Deserialize message field [init_pressure]
    data.init_pressure = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [init_floor]
    data.init_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_pressure]
    data.current_pressure = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_floor]
    data.current_floor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/FloorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50c989e719e41082ae566a766279d8c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 init_pressure
    int32 init_floor
    int32 current_pressure
    int32 current_floor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FloorStatus(null);
    if (msg.init_pressure !== undefined) {
      resolved.init_pressure = msg.init_pressure;
    }
    else {
      resolved.init_pressure = 0
    }

    if (msg.init_floor !== undefined) {
      resolved.init_floor = msg.init_floor;
    }
    else {
      resolved.init_floor = 0
    }

    if (msg.current_pressure !== undefined) {
      resolved.current_pressure = msg.current_pressure;
    }
    else {
      resolved.current_pressure = 0
    }

    if (msg.current_floor !== undefined) {
      resolved.current_floor = msg.current_floor;
    }
    else {
      resolved.current_floor = 0
    }

    return resolved;
    }
};

module.exports = FloorStatus;
