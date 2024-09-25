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

class ArmMovePoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_name = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_name')) {
        this.pose_name = initObj.pose_name
      }
      else {
        this.pose_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmMovePoseRequest
    // Serialize message field [pose_name]
    bufferOffset = _serializer.string(obj.pose_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmMovePoseRequest
    let len;
    let data = new ArmMovePoseRequest(null);
    // Deserialize message field [pose_name]
    data.pose_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pose_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ArmMovePoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6184073e8e665fb2bf0be194fc36541';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pose_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmMovePoseRequest(null);
    if (msg.pose_name !== undefined) {
      resolved.pose_name = msg.pose_name;
    }
    else {
      resolved.pose_name = ''
    }

    return resolved;
    }
};

class ArmMovePoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmMovePoseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmMovePoseResponse
    let len;
    let data = new ArmMovePoseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ArmMovePoseResponse';
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
    const resolved = new ArmMovePoseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ArmMovePoseRequest,
  Response: ArmMovePoseResponse,
  md5sum() { return 'e6184073e8e665fb2bf0be194fc36541'; },
  datatype() { return 'campusrover_msgs/ArmMovePose'; }
};
