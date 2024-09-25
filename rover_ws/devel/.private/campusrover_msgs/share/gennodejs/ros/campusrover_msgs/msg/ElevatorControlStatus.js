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

class ElevatorControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_status = null;
      this.elevator_id = null;
    }
    else {
      if (initObj.hasOwnProperty('control_status')) {
        this.control_status = initObj.control_status
      }
      else {
        this.control_status = 0;
      }
      if (initObj.hasOwnProperty('elevator_id')) {
        this.elevator_id = initObj.elevator_id
      }
      else {
        this.elevator_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorControlStatus
    // Serialize message field [control_status]
    bufferOffset = _serializer.uint16(obj.control_status, buffer, bufferOffset);
    // Serialize message field [elevator_id]
    bufferOffset = _serializer.uint16(obj.elevator_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorControlStatus
    let len;
    let data = new ElevatorControlStatus(null);
    // Deserialize message field [control_status]
    data.control_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [elevator_id]
    data.elevator_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ElevatorControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91eba8b0d0e3c9306f4419279cc38164';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 control_status
    uint16 STANDBY = 0
    uint16 MOVE_TO_OUTSIDE_BUTTON = 1
    uint16 PRESS_OUTSIDE_BUTTON = 2
    uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3
    uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4
    uint16 ENTER_ELEVATOR_OUTSIDE = 5
    uint16 ENTER_ELEVATOR_INSIDE_NO_ROTATE = 6
    uint16 ENTER_ELEVATOR_INSIDE = 7
    uint16 MOVE_TO_INSIDE_BUTTON_NO_ROTATE = 8
    uint16 MOVE_TO_INSIDE_BUTTON = 9
    uint16 PRESS_INSIDE_BUTTON_NO_ROTATE = 10
    uint16 PRESS_INSIDE_BUTTON = 11
    uint16 MOVE_TO_INSIDE_STANDBY_POSITION = 12
    uint16 WAIT_FOR_ELEVATOR_ARRIVE = 13
    uint16 WAIT_FOR_INSIDE_DOOR_OPEN = 14
    uint16 LEAVE_ELEVATOR_INSIDE = 15
    uint16 LEAVE_ELEVATOR_OUTSIDE = 16
    uint16 elevator_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorControlStatus(null);
    if (msg.control_status !== undefined) {
      resolved.control_status = msg.control_status;
    }
    else {
      resolved.control_status = 0
    }

    if (msg.elevator_id !== undefined) {
      resolved.elevator_id = msg.elevator_id;
    }
    else {
      resolved.elevator_id = 0
    }

    return resolved;
    }
};

// Constants for message
ElevatorControlStatus.Constants = {
  STANDBY: 0,
  MOVE_TO_OUTSIDE_BUTTON: 1,
  PRESS_OUTSIDE_BUTTON: 2,
  MOVE_TO_OUTSIDE_STANDBY_POSITION: 3,
  WAIT_FOR_OUTSIDE_DOOR_OPEN: 4,
  ENTER_ELEVATOR_OUTSIDE: 5,
  ENTER_ELEVATOR_INSIDE_NO_ROTATE: 6,
  ENTER_ELEVATOR_INSIDE: 7,
  MOVE_TO_INSIDE_BUTTON_NO_ROTATE: 8,
  MOVE_TO_INSIDE_BUTTON: 9,
  PRESS_INSIDE_BUTTON_NO_ROTATE: 10,
  PRESS_INSIDE_BUTTON: 11,
  MOVE_TO_INSIDE_STANDBY_POSITION: 12,
  WAIT_FOR_ELEVATOR_ARRIVE: 13,
  WAIT_FOR_INSIDE_DOOR_OPEN: 14,
  LEAVE_ELEVATOR_INSIDE: 15,
  LEAVE_ELEVATOR_OUTSIDE: 16,
}

module.exports = ElevatorControlStatus;
