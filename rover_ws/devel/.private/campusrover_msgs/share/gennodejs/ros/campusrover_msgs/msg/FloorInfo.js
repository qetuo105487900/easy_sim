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

class FloorInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_floor = null;
      this.target_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('current_floor')) {
        this.current_floor = initObj.current_floor
      }
      else {
        this.current_floor = 0;
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
    // Serializes a message object of type FloorInfo
    // Serialize message field [current_floor]
    bufferOffset = _serializer.int32(obj.current_floor, buffer, bufferOffset);
    // Serialize message field [target_floor]
    bufferOffset = _serializer.int32(obj.target_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FloorInfo
    let len;
    let data = new FloorInfo(null);
    // Deserialize message field [current_floor]
    data.current_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_floor]
    data.target_floor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/FloorInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51cf3c1c3025aae9deca720d6eb4681b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 current_floor
    int32 target_floor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FloorInfo(null);
    if (msg.current_floor !== undefined) {
      resolved.current_floor = msg.current_floor;
    }
    else {
      resolved.current_floor = 0
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

module.exports = FloorInfo;
