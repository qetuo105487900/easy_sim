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

class ElevatorStrategyStep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorStrategyStep
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorStrategyStep
    let len;
    let data = new ElevatorStrategyStep(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ElevatorStrategyStep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab7d8f1b7ce78283504b9bd3659c36b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 STANDBY = 0
    uint16 MOVE_TO_CHECK_OUTSIDE_BUTTON = 1
    uint16 PRESS_OUTSIDE_BUTTON = 2
    uint16 MOVE_TO_OUTSIDE_STANDBY_POSITION = 3
    uint16 WAIT_FOR_OUTSIDE_DOOR_OPEN = 4
    uint16 MOVE_TO_ELEVATOR_CENTER = 5
    uint16 MOVE_TO_CHECK_ELEVATOR_BUTTON = 6
    uint16 PRESS_ELEVATOR_BUTTON = 7
    uint16 MOVE_TO_ELEVATOR_STANDBY_POSITION = 8
    uint16 WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN = 9
    uint16 LEAVE_ELEVATOR = 10
    uint16 COMPLETE_ELEVATOR_STRATEGY = 11
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorStrategyStep(null);
    return resolved;
    }
};

// Constants for message
ElevatorStrategyStep.Constants = {
  STANDBY: 0,
  MOVE_TO_CHECK_OUTSIDE_BUTTON: 1,
  PRESS_OUTSIDE_BUTTON: 2,
  MOVE_TO_OUTSIDE_STANDBY_POSITION: 3,
  WAIT_FOR_OUTSIDE_DOOR_OPEN: 4,
  MOVE_TO_ELEVATOR_CENTER: 5,
  MOVE_TO_CHECK_ELEVATOR_BUTTON: 6,
  PRESS_ELEVATOR_BUTTON: 7,
  MOVE_TO_ELEVATOR_STANDBY_POSITION: 8,
  WAIT_FOR_ELEVATOR_ARRIVE_AND_DOOR_OPEN: 9,
  LEAVE_ELEVATOR: 10,
  COMPLETE_ELEVATOR_STRATEGY: 11,
}

module.exports = ElevatorStrategyStep;
