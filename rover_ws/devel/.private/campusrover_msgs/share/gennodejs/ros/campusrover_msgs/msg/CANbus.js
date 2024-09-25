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

class CANbus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.group = null;
      this.fun_code = null;
      this.reg1 = null;
      this.value1 = null;
      this.reg2 = null;
      this.value2 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = 0;
      }
      if (initObj.hasOwnProperty('fun_code')) {
        this.fun_code = initObj.fun_code
      }
      else {
        this.fun_code = 0;
      }
      if (initObj.hasOwnProperty('reg1')) {
        this.reg1 = initObj.reg1
      }
      else {
        this.reg1 = 0;
      }
      if (initObj.hasOwnProperty('value1')) {
        this.value1 = initObj.value1
      }
      else {
        this.value1 = 0;
      }
      if (initObj.hasOwnProperty('reg2')) {
        this.reg2 = initObj.reg2
      }
      else {
        this.reg2 = 0;
      }
      if (initObj.hasOwnProperty('value2')) {
        this.value2 = initObj.value2
      }
      else {
        this.value2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CANbus
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.uint16(obj.group, buffer, bufferOffset);
    // Serialize message field [fun_code]
    bufferOffset = _serializer.uint16(obj.fun_code, buffer, bufferOffset);
    // Serialize message field [reg1]
    bufferOffset = _serializer.uint16(obj.reg1, buffer, bufferOffset);
    // Serialize message field [value1]
    bufferOffset = _serializer.uint16(obj.value1, buffer, bufferOffset);
    // Serialize message field [reg2]
    bufferOffset = _serializer.uint16(obj.reg2, buffer, bufferOffset);
    // Serialize message field [value2]
    bufferOffset = _serializer.uint16(obj.value2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CANbus
    let len;
    let data = new CANbus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fun_code]
    data.fun_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reg1]
    data.reg1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [value1]
    data.value1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reg2]
    data.reg2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [value2]
    data.value2 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/CANbus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a6881bd895ce03d25c554a5c460b8df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 id
    uint16 id_container1 = 1
    uint16 id_container2 = 2
    uint16 id_container3 = 3
    uint16 id_container4 = 4
    uint16 id_twoside = 5
    
    uint16 group
    uint16 group_zero = 0
    uint16 group_container = 1
    
    uint16 fun_code
    uint16 sending_single = 26 #0x1A
    uint16 sending_group = 138 #0x8A
    
    uint16 reg1
    uint16 value1
    uint16 reg2
    uint16 value2
    
    uint16 reg_container = 2
    uint16 value_opendoor = 1
    uint16 value_closedoor = 0
    
    uint16 reg_containerled = 3
    uint16 reg_leftsideled = 4
    uint16 reg_rightsideled = 5
    uint16 reg_twosideled = 6
    uint16 value_dark = 0
    uint16 value_light_50 = 1
    uint16 value_light_100 = 2
    uint16 value_breathe = 3
    uint16 value_blink = 4
    
    uint16 value_water1 = 5
    uint16 value_water2 = 6
    uint16 value_water3 = 7
    uint16 value_water4 = 8
    uint16 value_talking = 9
    
    uint16 value_nocolor = 0
    uint16 value_white = 1
    uint16 value_red = 2
    uint16 value_green = 3
    uint16 value_blue = 4
    uint16 value_purple = 5
    uint16 value_yellow = 6
    uint16 value_sky = 7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CANbus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = 0
    }

    if (msg.fun_code !== undefined) {
      resolved.fun_code = msg.fun_code;
    }
    else {
      resolved.fun_code = 0
    }

    if (msg.reg1 !== undefined) {
      resolved.reg1 = msg.reg1;
    }
    else {
      resolved.reg1 = 0
    }

    if (msg.value1 !== undefined) {
      resolved.value1 = msg.value1;
    }
    else {
      resolved.value1 = 0
    }

    if (msg.reg2 !== undefined) {
      resolved.reg2 = msg.reg2;
    }
    else {
      resolved.reg2 = 0
    }

    if (msg.value2 !== undefined) {
      resolved.value2 = msg.value2;
    }
    else {
      resolved.value2 = 0
    }

    return resolved;
    }
};

// Constants for message
CANbus.Constants = {
  ID_CONTAINER1: 1,
  ID_CONTAINER2: 2,
  ID_CONTAINER3: 3,
  ID_CONTAINER4: 4,
  ID_TWOSIDE: 5,
  GROUP_ZERO: 0,
  GROUP_CONTAINER: 1,
  SENDING_SINGLE: 26,
  SENDING_GROUP: 138,
  REG_CONTAINER: 2,
  VALUE_OPENDOOR: 1,
  VALUE_CLOSEDOOR: 0,
  REG_CONTAINERLED: 3,
  REG_LEFTSIDELED: 4,
  REG_RIGHTSIDELED: 5,
  REG_TWOSIDELED: 6,
  VALUE_DARK: 0,
  VALUE_LIGHT_50: 1,
  VALUE_LIGHT_100: 2,
  VALUE_BREATHE: 3,
  VALUE_BLINK: 4,
  VALUE_WATER1: 5,
  VALUE_WATER2: 6,
  VALUE_WATER3: 7,
  VALUE_WATER4: 8,
  VALUE_TALKING: 9,
  VALUE_NOCOLOR: 0,
  VALUE_WHITE: 1,
  VALUE_RED: 2,
  VALUE_GREEN: 3,
  VALUE_BLUE: 4,
  VALUE_PURPLE: 5,
  VALUE_YELLOW: 6,
  VALUE_SKY: 7,
}

module.exports = CANbus;
