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

class ElevatorStatusCheckerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_name = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorStatusCheckerRequest
    // Serialize message field [node_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.node_name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorStatusCheckerRequest
    let len;
    let data = new ElevatorStatusCheckerRequest(null);
    // Deserialize message field [node_name]
    data.node_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.node_name);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorStatusCheckerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10f198604c5b4593b82d50b6435659cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String node_name
    std_msgs/Bool status
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorStatusCheckerRequest(null);
    if (msg.node_name !== undefined) {
      resolved.node_name = std_msgs.msg.String.Resolve(msg.node_name)
    }
    else {
      resolved.node_name = new std_msgs.msg.String()
    }

    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.Bool.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

class ElevatorStatusCheckerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorStatusCheckerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorStatusCheckerResponse
    let len;
    let data = new ElevatorStatusCheckerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorStatusCheckerResponse';
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
    const resolved = new ElevatorStatusCheckerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ElevatorStatusCheckerRequest,
  Response: ElevatorStatusCheckerResponse,
  md5sum() { return '10f198604c5b4593b82d50b6435659cb'; },
  datatype() { return 'campusrover_msgs/ElevatorStatusChecker'; }
};
