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

class DriveProfileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_profile = null;
      this.acc_max = null;
      this.acc_step = null;
      this.dec_max = null;
      this.dec_step = null;
      this.vel_tolerance = null;
      this.profile_omega_max = null;
      this.profile_omega_step = null;
      this.omega_tolerance = null;
      this.max_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_profile')) {
        this.drive_profile = initObj.drive_profile
      }
      else {
        this.drive_profile = 0;
      }
      if (initObj.hasOwnProperty('acc_max')) {
        this.acc_max = initObj.acc_max
      }
      else {
        this.acc_max = 0.0;
      }
      if (initObj.hasOwnProperty('acc_step')) {
        this.acc_step = initObj.acc_step
      }
      else {
        this.acc_step = 0.0;
      }
      if (initObj.hasOwnProperty('dec_max')) {
        this.dec_max = initObj.dec_max
      }
      else {
        this.dec_max = 0.0;
      }
      if (initObj.hasOwnProperty('dec_step')) {
        this.dec_step = initObj.dec_step
      }
      else {
        this.dec_step = 0.0;
      }
      if (initObj.hasOwnProperty('vel_tolerance')) {
        this.vel_tolerance = initObj.vel_tolerance
      }
      else {
        this.vel_tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('profile_omega_max')) {
        this.profile_omega_max = initObj.profile_omega_max
      }
      else {
        this.profile_omega_max = 0.0;
      }
      if (initObj.hasOwnProperty('profile_omega_step')) {
        this.profile_omega_step = initObj.profile_omega_step
      }
      else {
        this.profile_omega_step = 0.0;
      }
      if (initObj.hasOwnProperty('omega_tolerance')) {
        this.omega_tolerance = initObj.omega_tolerance
      }
      else {
        this.omega_tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveProfileRequest
    // Serialize message field [drive_profile]
    bufferOffset = _serializer.uint8(obj.drive_profile, buffer, bufferOffset);
    // Serialize message field [acc_max]
    bufferOffset = _serializer.float64(obj.acc_max, buffer, bufferOffset);
    // Serialize message field [acc_step]
    bufferOffset = _serializer.float64(obj.acc_step, buffer, bufferOffset);
    // Serialize message field [dec_max]
    bufferOffset = _serializer.float64(obj.dec_max, buffer, bufferOffset);
    // Serialize message field [dec_step]
    bufferOffset = _serializer.float64(obj.dec_step, buffer, bufferOffset);
    // Serialize message field [vel_tolerance]
    bufferOffset = _serializer.float64(obj.vel_tolerance, buffer, bufferOffset);
    // Serialize message field [profile_omega_max]
    bufferOffset = _serializer.float64(obj.profile_omega_max, buffer, bufferOffset);
    // Serialize message field [profile_omega_step]
    bufferOffset = _serializer.float64(obj.profile_omega_step, buffer, bufferOffset);
    // Serialize message field [omega_tolerance]
    bufferOffset = _serializer.float64(obj.omega_tolerance, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float64(obj.max_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveProfileRequest
    let len;
    let data = new DriveProfileRequest(null);
    // Deserialize message field [drive_profile]
    data.drive_profile = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acc_max]
    data.acc_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_step]
    data.acc_step = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dec_max]
    data.dec_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dec_step]
    data.dec_step = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_tolerance]
    data.vel_tolerance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [profile_omega_max]
    data.profile_omega_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [profile_omega_step]
    data.profile_omega_step = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega_tolerance]
    data.omega_tolerance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/DriveProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5377416382979c45089c79712b283109';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DRIVE_PROFILE_NOUSE = 0
    uint8 DRIVE_PROFILE_DEFAULT = 1
    uint8 DRIVE_PROFILE_SET = 2
    uint8 drive_profile
    
    float64 acc_max 
    float64 acc_step
    float64 dec_max
    float64 dec_step
    float64 vel_tolerance
    float64 profile_omega_max
    float64 profile_omega_step
    float64 omega_tolerance
    float64 max_speed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveProfileRequest(null);
    if (msg.drive_profile !== undefined) {
      resolved.drive_profile = msg.drive_profile;
    }
    else {
      resolved.drive_profile = 0
    }

    if (msg.acc_max !== undefined) {
      resolved.acc_max = msg.acc_max;
    }
    else {
      resolved.acc_max = 0.0
    }

    if (msg.acc_step !== undefined) {
      resolved.acc_step = msg.acc_step;
    }
    else {
      resolved.acc_step = 0.0
    }

    if (msg.dec_max !== undefined) {
      resolved.dec_max = msg.dec_max;
    }
    else {
      resolved.dec_max = 0.0
    }

    if (msg.dec_step !== undefined) {
      resolved.dec_step = msg.dec_step;
    }
    else {
      resolved.dec_step = 0.0
    }

    if (msg.vel_tolerance !== undefined) {
      resolved.vel_tolerance = msg.vel_tolerance;
    }
    else {
      resolved.vel_tolerance = 0.0
    }

    if (msg.profile_omega_max !== undefined) {
      resolved.profile_omega_max = msg.profile_omega_max;
    }
    else {
      resolved.profile_omega_max = 0.0
    }

    if (msg.profile_omega_step !== undefined) {
      resolved.profile_omega_step = msg.profile_omega_step;
    }
    else {
      resolved.profile_omega_step = 0.0
    }

    if (msg.omega_tolerance !== undefined) {
      resolved.omega_tolerance = msg.omega_tolerance;
    }
    else {
      resolved.omega_tolerance = 0.0
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    return resolved;
    }
};

// Constants for message
DriveProfileRequest.Constants = {
  DRIVE_PROFILE_NOUSE: 0,
  DRIVE_PROFILE_DEFAULT: 1,
  DRIVE_PROFILE_SET: 2,
}

class DriveProfileResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveProfileResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveProfileResponse
    let len;
    let data = new DriveProfileResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/DriveProfileResponse';
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
    const resolved = new DriveProfileResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DriveProfileRequest,
  Response: DriveProfileResponse,
  md5sum() { return '5377416382979c45089c79712b283109'; },
  datatype() { return 'campusrover_msgs/DriveProfile'; }
};
