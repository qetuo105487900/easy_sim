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

class RoomConnected {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection = null;
    }
    else {
      if (initObj.hasOwnProperty('connection')) {
        this.connection = initObj.connection
      }
      else {
        this.connection = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoomConnected
    // Serialize message field [connection]
    bufferOffset = _arraySerializer.string(obj.connection, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoomConnected
    let len;
    let data = new RoomConnected(null);
    // Deserialize message field [connection]
    data.connection = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.connection.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/RoomConnected';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43f469704f4cb14b510f898718cdf6a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] connection
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoomConnected(null);
    if (msg.connection !== undefined) {
      resolved.connection = msg.connection;
    }
    else {
      resolved.connection = []
    }

    return resolved;
    }
};

module.exports = RoomConnected;
