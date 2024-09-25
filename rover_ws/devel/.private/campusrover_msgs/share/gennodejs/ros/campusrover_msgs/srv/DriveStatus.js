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

class DriveStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_status = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_status')) {
        this.drive_status = initObj.drive_status
      }
      else {
        this.drive_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveStatusRequest
    // Serialize message field [drive_status]
    bufferOffset = _serializer.uint8(obj.drive_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveStatusRequest
    let len;
    let data = new DriveStatusRequest(null);
    // Deserialize message field [drive_status]
    data.drive_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/DriveStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a11cbf62ada3e909e0d717d712b0562';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DRIVE_STATUS_STOP = 0
    uint8 DRIVE_STATUS_RELEASE = 1
    uint8 DRIVE_STATUS_CMD_CONTROL = 2
    uint8 drive_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveStatusRequest(null);
    if (msg.drive_status !== undefined) {
      resolved.drive_status = msg.drive_status;
    }
    else {
      resolved.drive_status = 0
    }

    return resolved;
    }
};

// Constants for message
DriveStatusRequest.Constants = {
  DRIVE_STATUS_STOP: 0,
  DRIVE_STATUS_RELEASE: 1,
  DRIVE_STATUS_CMD_CONTROL: 2,
}

class DriveStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveStatusResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveStatusResponse
    let len;
    let data = new DriveStatusResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/DriveStatusResponse';
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
    const resolved = new DriveStatusResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DriveStatusRequest,
  Response: DriveStatusResponse,
  md5sum() { return '4a11cbf62ada3e909e0d717d712b0562'; },
  datatype() { return 'campusrover_msgs/DriveStatus'; }
};
