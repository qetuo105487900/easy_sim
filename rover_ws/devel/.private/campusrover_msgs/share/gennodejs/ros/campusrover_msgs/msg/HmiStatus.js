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

class HmiStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.staus = null;
    }
    else {
      if (initObj.hasOwnProperty('staus')) {
        this.staus = initObj.staus
      }
      else {
        this.staus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HmiStatus
    // Serialize message field [staus]
    bufferOffset = _serializer.uint16(obj.staus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HmiStatus
    let len;
    let data = new HmiStatus(null);
    // Deserialize message field [staus]
    data.staus = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/HmiStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a5095bbf21b70be2bcdbef0adedeff8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 staus
    uint16 STAUS_BOOT = 1
    uint16 STAUS_STANDBY = 2
    uint16 STAUS_SPEAK_HELLO_HELLO = 54
    uint16 STAUS_SPEAK_SCAN_QRCODE1 = 55
    uint16 STAUS_SPEAK_WRONG_NUMBER1 = 56
    uint16 STAUS_SPEAK_PUT_IN_MEALS = 57
    uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN = 58
    uint16 STAUS_SPEAK_MEAL_ARRIVED = 59
    uint16 STAUS_SPEAK_DELIVERING_MEAL = 60
    uint16 STAUS_SPEAK_SCAN_QRCODE2 = 61
    uint16 STAUS_SPEAK_WRONG_NUMBER2 = 62
    uint16 STAUS_SPEAK_TAKE_OUT_MEALS_1 = 3
    uint16 STAUS_WHITE_LIGHT_1 = 91 #container1 white
    uint16 STAUS_GREEN_LIGHT_1 = 7 #blink
    uint16 STAUS_BLUE_LIGHT_1 = 11 #open
    uint16 STAUS_RED_LIGHT_1 = 15 #closd
    uint16 STAUS_SPEAK_TAKE_OUT_MEALS_2 = 4
    uint16 STAUS_WHITE_LIGHT_2 = 92
    uint16 STAUS_GREEN_LIGHT_2 = 8
    uint16 STAUS_BLUE_LIGHT_2 = 12
    uint16 STAUS_RED_LIGHT_2 = 16
    uint16 STAUS_SPEAK_TAKE_OUT_MEALS_3 = 5
    uint16 STAUS_WHITE_LIGHT_3 = 93
    uint16 STAUS_GREEN_LIGHT_3 = 9
    uint16 STAUS_BLUE_LIGHT_3 = 13
    uint16 STAUS_RED_LIGHT_3 = 17
    uint16 STAUS_SPEAK_TAKE_OUT_MEALS_4 = 6
    uint16 STAUS_WHITE_LIGHT_4 = 94
    uint16 STAUS_GREEN_LIGHT_4 = 10
    uint16 STAUS_BLUE_LIGHT_4 = 14
    uint16 STAUS_RED_LIGHT_4 = 18
    uint16 STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT = 63
    uint16 STAUS_SPEAK_ENJOY_MEAL = 64
    uint16 STAUS_SPEAK_HELLO = 65
    uint16 STAUS_SPEAK_THANKS = 66
    uint16 STAUS_SPEAK_GOODBYE = 67
    uint16 STAUS_SPEAK_EXCUSE_ME = 68
    uint16 STAUS_SPEAK_COMMING_THROUGH = 69
    uint16 STAUS_SPEAK_BE_CAREFUL = 70
    uint16 STAUS_SPEAK_WATCH_OUT = 19
    uint16 STAUS_SPEAK_HELP_ME = 20
    uint16 STAUS_SPEAK_OPEN_DOOR = 21
    uint16 STAUS_SPEAK_HAVE_GOODDAY = 22
    uint16 STAUS_SPEAK_WRONG_OPERATION = 23
    uint16 STAUS_SPEAK_DO_IT_AGAIN = 24
    uint16 STAUS_SPEAK_CORRECT_OR_NOT = 25
    uint16 STAUS_SPEAK_LOW_BATTERY = 26
    uint16 STAUS_SPEAK_SYSTEM_ERROR = 27
    uint16 STAUS_SPEAK_CALL_STAFF = 28
    uint16 STAUS_SPEAK_LOADING = 29
    uint16 STAUS_SPEAK_WAIT = 30
    uint16 STAUS_ENTER_ELEVATOR = 31
    uint16 STAUS_LEAVING_ELEVATOR = 32
    uint16 STAUS_TURN_RIGHT = 34
    uint16 STAUS_TURN_LEFT = 35
    uint16 STAUS_BLOCKED = 36
    uint16 STAUS_REVERSE = 37
    uint16 STAUS_BREATH = 38
    uint16 STAUS_FORWARD = 39
    uint16 STAUS_MOVING = 40
    uint16 STAUS_1F = 41
    uint16 STAUS_2F = 42
    uint16 STAUS_3F = 43
    uint16 STAUS_4F = 44
    uint16 STAUS_5F = 45
    uint16 STAUS_6F = 46
    uint16 STAUS_7F = 47
    uint16 STAUS_8F = 48
    uint16 STAUS_9F = 49
    uint16 STAUS_10F = 50
    uint16 STAUS_11F = 51
    uint16 STAUS_12F = 52
    uint16 STAUS_PRESS_BUTTON = 53
    uint16 STAUS_ALL_LIGHT_OFF = 100
    uint16 STAUS_ALL_LIGHT_ON = 101
    uint16 STAUS_TWO_SIDE_BLUE = 80
    uint16 STAUS_LEFT_SIDE_BLUE_BLINK = 81
    uint16 STAUS_RIGHT_SIDE_BLUE_BLINK = 82
    uint16 STAUS_TWO_SIDE_BREATH = 83
    uint16 STAUS_TWO_SIDE_WATER_1 = 84
    uint16 STAUS_TWO_SIDE_WATER_2 = 85
    uint16 STAUS_TWO_SIDE_WATER_3 = 86
    uint16 STAUS_TWO_SIDE_WATER_4 = 87
    uint16 STAUS_TWO_SIDE_TALKING = 88
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HmiStatus(null);
    if (msg.staus !== undefined) {
      resolved.staus = msg.staus;
    }
    else {
      resolved.staus = 0
    }

    return resolved;
    }
};

// Constants for message
HmiStatus.Constants = {
  STAUS_BOOT: 1,
  STAUS_STANDBY: 2,
  STAUS_SPEAK_HELLO_HELLO: 54,
  STAUS_SPEAK_SCAN_QRCODE1: 55,
  STAUS_SPEAK_WRONG_NUMBER1: 56,
  STAUS_SPEAK_PUT_IN_MEALS: 57,
  STAUS_SPEAK_PRESS_BUTTON_AFTER_PUT_IN: 58,
  STAUS_SPEAK_MEAL_ARRIVED: 59,
  STAUS_SPEAK_DELIVERING_MEAL: 60,
  STAUS_SPEAK_SCAN_QRCODE2: 61,
  STAUS_SPEAK_WRONG_NUMBER2: 62,
  STAUS_SPEAK_TAKE_OUT_MEALS_1: 3,
  STAUS_WHITE_LIGHT_1: 91,
  STAUS_GREEN_LIGHT_1: 7,
  STAUS_BLUE_LIGHT_1: 11,
  STAUS_RED_LIGHT_1: 15,
  STAUS_SPEAK_TAKE_OUT_MEALS_2: 4,
  STAUS_WHITE_LIGHT_2: 92,
  STAUS_GREEN_LIGHT_2: 8,
  STAUS_BLUE_LIGHT_2: 12,
  STAUS_RED_LIGHT_2: 16,
  STAUS_SPEAK_TAKE_OUT_MEALS_3: 5,
  STAUS_WHITE_LIGHT_3: 93,
  STAUS_GREEN_LIGHT_3: 9,
  STAUS_BLUE_LIGHT_3: 13,
  STAUS_RED_LIGHT_3: 17,
  STAUS_SPEAK_TAKE_OUT_MEALS_4: 6,
  STAUS_WHITE_LIGHT_4: 94,
  STAUS_GREEN_LIGHT_4: 10,
  STAUS_BLUE_LIGHT_4: 14,
  STAUS_RED_LIGHT_4: 18,
  STAUS_SPEAK_PRESS_BUTTON_AFTER_TAKE_OUT: 63,
  STAUS_SPEAK_ENJOY_MEAL: 64,
  STAUS_SPEAK_HELLO: 65,
  STAUS_SPEAK_THANKS: 66,
  STAUS_SPEAK_GOODBYE: 67,
  STAUS_SPEAK_EXCUSE_ME: 68,
  STAUS_SPEAK_COMMING_THROUGH: 69,
  STAUS_SPEAK_BE_CAREFUL: 70,
  STAUS_SPEAK_WATCH_OUT: 19,
  STAUS_SPEAK_HELP_ME: 20,
  STAUS_SPEAK_OPEN_DOOR: 21,
  STAUS_SPEAK_HAVE_GOODDAY: 22,
  STAUS_SPEAK_WRONG_OPERATION: 23,
  STAUS_SPEAK_DO_IT_AGAIN: 24,
  STAUS_SPEAK_CORRECT_OR_NOT: 25,
  STAUS_SPEAK_LOW_BATTERY: 26,
  STAUS_SPEAK_SYSTEM_ERROR: 27,
  STAUS_SPEAK_CALL_STAFF: 28,
  STAUS_SPEAK_LOADING: 29,
  STAUS_SPEAK_WAIT: 30,
  STAUS_ENTER_ELEVATOR: 31,
  STAUS_LEAVING_ELEVATOR: 32,
  STAUS_TURN_RIGHT: 34,
  STAUS_TURN_LEFT: 35,
  STAUS_BLOCKED: 36,
  STAUS_REVERSE: 37,
  STAUS_BREATH: 38,
  STAUS_FORWARD: 39,
  STAUS_MOVING: 40,
  STAUS_1F: 41,
  STAUS_2F: 42,
  STAUS_3F: 43,
  STAUS_4F: 44,
  STAUS_5F: 45,
  STAUS_6F: 46,
  STAUS_7F: 47,
  STAUS_8F: 48,
  STAUS_9F: 49,
  STAUS_10F: 50,
  STAUS_11F: 51,
  STAUS_12F: 52,
  STAUS_PRESS_BUTTON: 53,
  STAUS_ALL_LIGHT_OFF: 100,
  STAUS_ALL_LIGHT_ON: 101,
  STAUS_TWO_SIDE_BLUE: 80,
  STAUS_LEFT_SIDE_BLUE_BLINK: 81,
  STAUS_RIGHT_SIDE_BLUE_BLINK: 82,
  STAUS_TWO_SIDE_BREATH: 83,
  STAUS_TWO_SIDE_WATER_1: 84,
  STAUS_TWO_SIDE_WATER_2: 85,
  STAUS_TWO_SIDE_WATER_3: 86,
  STAUS_TWO_SIDE_WATER_4: 87,
  STAUS_TWO_SIDE_TALKING: 88,
}

module.exports = HmiStatus;
