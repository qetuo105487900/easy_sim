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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.rooms = null;
      this.current_floor = null;
      this.destination_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('rooms')) {
        this.rooms = initObj.rooms
      }
      else {
        this.rooms = [];
      }
      if (initObj.hasOwnProperty('current_floor')) {
        this.current_floor = initObj.current_floor
      }
      else {
        this.current_floor = 0;
      }
      if (initObj.hasOwnProperty('destination_floor')) {
        this.destination_floor = initObj.destination_floor
      }
      else {
        this.destination_floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [rooms]
    bufferOffset = _arraySerializer.string(obj.rooms, buffer, bufferOffset, null);
    // Serialize message field [current_floor]
    bufferOffset = _serializer.int8(obj.current_floor, buffer, bufferOffset);
    // Serialize message field [destination_floor]
    bufferOffset = _serializer.int8(obj.destination_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rooms]
    data.rooms = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_floor]
    data.current_floor = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [destination_floor]
    data.destination_floor = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.rooms.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '588c81bfe8a0db760845dae98b513221';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STATE_MOVE_TO_ELEVATOR=0
    uint8 STATE_TAKE_ELEVATOR=1
    uint8 STATE_DILIVER_THIS_FLOOR=2
    uint8 STATE_MOVE_TO_ORIGIN=3
    uint8 state
    string[] rooms	
    int8 current_floor
    int8 destination_floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.rooms !== undefined) {
      resolved.rooms = msg.rooms;
    }
    else {
      resolved.rooms = []
    }

    if (msg.current_floor !== undefined) {
      resolved.current_floor = msg.current_floor;
    }
    else {
      resolved.current_floor = 0
    }

    if (msg.destination_floor !== undefined) {
      resolved.destination_floor = msg.destination_floor;
    }
    else {
      resolved.destination_floor = 0
    }

    return resolved;
    }
};

// Constants for message
State.Constants = {
  STATE_MOVE_TO_ELEVATOR: 0,
  STATE_TAKE_ELEVATOR: 1,
  STATE_DILIVER_THIS_FLOOR: 2,
  STATE_MOVE_TO_ORIGIN: 3,
}

module.exports = State;
