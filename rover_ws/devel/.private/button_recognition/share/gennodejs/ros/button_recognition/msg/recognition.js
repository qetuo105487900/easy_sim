// Auto-generated. Do not edit!

// (in-package button_recognition.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class recognition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.y_min = null;
      this.x_min = null;
      this.y_max = null;
      this.x_max = null;
      this.categ = null;
      this.score = null;
      this.activate_score = null;
      this.belief = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('y_min')) {
        this.y_min = initObj.y_min
      }
      else {
        this.y_min = 0;
      }
      if (initObj.hasOwnProperty('x_min')) {
        this.x_min = initObj.x_min
      }
      else {
        this.x_min = 0;
      }
      if (initObj.hasOwnProperty('y_max')) {
        this.y_max = initObj.y_max
      }
      else {
        this.y_max = 0;
      }
      if (initObj.hasOwnProperty('x_max')) {
        this.x_max = initObj.x_max
      }
      else {
        this.x_max = 0;
      }
      if (initObj.hasOwnProperty('categ')) {
        this.categ = initObj.categ
      }
      else {
        this.categ = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('activate_score')) {
        this.activate_score = initObj.activate_score
      }
      else {
        this.activate_score = 0.0;
      }
      if (initObj.hasOwnProperty('belief')) {
        this.belief = initObj.belief
      }
      else {
        this.belief = 0.0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recognition
    // Serialize message field [y_min]
    bufferOffset = _serializer.int32(obj.y_min, buffer, bufferOffset);
    // Serialize message field [x_min]
    bufferOffset = _serializer.int32(obj.x_min, buffer, bufferOffset);
    // Serialize message field [y_max]
    bufferOffset = _serializer.int32(obj.y_max, buffer, bufferOffset);
    // Serialize message field [x_max]
    bufferOffset = _serializer.int32(obj.x_max, buffer, bufferOffset);
    // Serialize message field [categ]
    bufferOffset = _serializer.int32(obj.categ, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [activate_score]
    bufferOffset = _serializer.float32(obj.activate_score, buffer, bufferOffset);
    // Serialize message field [belief]
    bufferOffset = _serializer.float32(obj.belief, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recognition
    let len;
    let data = new recognition(null);
    // Deserialize message field [y_min]
    data.y_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_min]
    data.x_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_max]
    data.y_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_max]
    data.x_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [categ]
    data.categ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [activate_score]
    data.activate_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [belief]
    data.belief = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'button_recognition/recognition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46ce2b8843cab8e05556ebbba9c830ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 y_min
    int32 x_min
    int32 y_max
    int32 x_max
    int32 categ
    float32 score
    float32 activate_score
    float32 belief
    string text
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recognition(null);
    if (msg.y_min !== undefined) {
      resolved.y_min = msg.y_min;
    }
    else {
      resolved.y_min = 0
    }

    if (msg.x_min !== undefined) {
      resolved.x_min = msg.x_min;
    }
    else {
      resolved.x_min = 0
    }

    if (msg.y_max !== undefined) {
      resolved.y_max = msg.y_max;
    }
    else {
      resolved.y_max = 0
    }

    if (msg.x_max !== undefined) {
      resolved.x_max = msg.x_max;
    }
    else {
      resolved.x_max = 0
    }

    if (msg.categ !== undefined) {
      resolved.categ = msg.categ;
    }
    else {
      resolved.categ = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.activate_score !== undefined) {
      resolved.activate_score = msg.activate_score;
    }
    else {
      resolved.activate_score = 0.0
    }

    if (msg.belief !== undefined) {
      resolved.belief = msg.belief;
    }
    else {
      resolved.belief = 0.0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = recognition;
