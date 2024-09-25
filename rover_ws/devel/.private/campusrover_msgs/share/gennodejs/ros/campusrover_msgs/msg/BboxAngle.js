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

class BboxAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BboxAngle
    // Serialize message field [label]
    bufferOffset = _serializer.uint16(obj.label, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BboxAngle
    let len;
    let data = new BboxAngle(null);
    // Deserialize message field [label]
    data.label = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/BboxAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2aa10b01275d72e1527a3a634bcf02a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 LABEL_PERSON = 1
    uint16 LABEL_BICYCLE = 2
    uint16 LABEL_CAR = 3
    uint16 LABEL_MOTORCYCLE = 4
    
    uint16 label
    float64 angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BboxAngle(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

// Constants for message
BboxAngle.Constants = {
  LABEL_PERSON: 1,
  LABEL_BICYCLE: 2,
  LABEL_CAR: 3,
  LABEL_MOTORCYCLE: 4,
}

module.exports = BboxAngle;
