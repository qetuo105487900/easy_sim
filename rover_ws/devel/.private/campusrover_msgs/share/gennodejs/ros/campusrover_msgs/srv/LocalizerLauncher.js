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

class LocalizerLauncherRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.localizer = null;
      this.map_file = null;
    }
    else {
      if (initObj.hasOwnProperty('localizer')) {
        this.localizer = initObj.localizer
      }
      else {
        this.localizer = 0;
      }
      if (initObj.hasOwnProperty('map_file')) {
        this.map_file = initObj.map_file
      }
      else {
        this.map_file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizerLauncherRequest
    // Serialize message field [localizer]
    bufferOffset = _serializer.uint8(obj.localizer, buffer, bufferOffset);
    // Serialize message field [map_file]
    bufferOffset = _serializer.string(obj.map_file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizerLauncherRequest
    let len;
    let data = new LocalizerLauncherRequest(null);
    // Deserialize message field [localizer]
    data.localizer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_file]
    data.map_file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_file);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/LocalizerLauncherRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31dad307792f3557c6fb217cceb9116f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LOCOLIZAR_2D_VLP16_ODOM=0
    uint8 LOCOLIZAR_2D_HOKUYO_ODOM=1
    uint8 LOCOLIZAR_2D_YD_ODOM=2
    uint8 LOCOLIZAR_2D_YD_SCAN_MATCHING=3
    uint8 LOCOLIZAR_3D_VLP16_ODOM=4
    
    uint8 localizer
    string map_file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizerLauncherRequest(null);
    if (msg.localizer !== undefined) {
      resolved.localizer = msg.localizer;
    }
    else {
      resolved.localizer = 0
    }

    if (msg.map_file !== undefined) {
      resolved.map_file = msg.map_file;
    }
    else {
      resolved.map_file = ''
    }

    return resolved;
    }
};

// Constants for message
LocalizerLauncherRequest.Constants = {
  LOCOLIZAR_2D_VLP16_ODOM: 0,
  LOCOLIZAR_2D_HOKUYO_ODOM: 1,
  LOCOLIZAR_2D_YD_ODOM: 2,
  LOCOLIZAR_2D_YD_SCAN_MATCHING: 3,
  LOCOLIZAR_3D_VLP16_ODOM: 4,
}

class LocalizerLauncherResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pid = null;
    }
    else {
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizerLauncherResponse
    // Serialize message field [pid]
    bufferOffset = _serializer.int16(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizerLauncherResponse
    let len;
    let data = new LocalizerLauncherResponse(null);
    // Deserialize message field [pid]
    data.pid = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/LocalizerLauncherResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1137d2b538a08de7b3b2fc45ff071459';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 pid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizerLauncherResponse(null);
    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: LocalizerLauncherRequest,
  Response: LocalizerLauncherResponse,
  md5sum() { return '8eb55704262cb8d370c8eac127c46d76'; },
  datatype() { return 'campusrover_msgs/LocalizerLauncher'; }
};
