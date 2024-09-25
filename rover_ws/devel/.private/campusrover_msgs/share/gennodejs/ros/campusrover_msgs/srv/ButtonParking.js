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

class ButtonParkingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parking_dis = null;
    }
    else {
      if (initObj.hasOwnProperty('parking_dis')) {
        this.parking_dis = initObj.parking_dis
      }
      else {
        this.parking_dis = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonParkingRequest
    // Serialize message field [parking_dis]
    bufferOffset = _serializer.float32(obj.parking_dis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonParkingRequest
    let len;
    let data = new ButtonParkingRequest(null);
    // Deserialize message field [parking_dis]
    data.parking_dis = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonParkingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcf6feb26f63e7e05f9ddc618069eaed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 parking_dis
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonParkingRequest(null);
    if (msg.parking_dis !== undefined) {
      resolved.parking_dis = msg.parking_dis;
    }
    else {
      resolved.parking_dis = 0.0
    }

    return resolved;
    }
};

class ButtonParkingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonParkingResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonParkingResponse
    let len;
    let data = new ButtonParkingResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ButtonParkingResponse';
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
    const resolved = new ButtonParkingResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ButtonParkingRequest,
  Response: ButtonParkingResponse,
  md5sum() { return 'fcf6feb26f63e7e05f9ddc618069eaed'; },
  datatype() { return 'campusrover_msgs/ButtonParking'; }
};
