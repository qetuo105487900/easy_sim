// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ElevatorInfo = require('./ElevatorInfo.js');

//-----------------------------------------------------------

class ElevatorInfoArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.elevator_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('elevator_infos')) {
        this.elevator_infos = initObj.elevator_infos
      }
      else {
        this.elevator_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorInfoArray
    // Serialize message field [elevator_infos]
    // Serialize the length for message field [elevator_infos]
    bufferOffset = _serializer.uint32(obj.elevator_infos.length, buffer, bufferOffset);
    obj.elevator_infos.forEach((val) => {
      bufferOffset = ElevatorInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorInfoArray
    let len;
    let data = new ElevatorInfoArray(null);
    // Deserialize message field [elevator_infos]
    // Deserialize array length for message field [elevator_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.elevator_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.elevator_infos[i] = ElevatorInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.elevator_infos.forEach((val) => {
      length += ElevatorInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ElevatorInfoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e9215978b0b25ebc2893037e3da3bf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    campusrover_msgs/ElevatorInfo[] elevator_infos
    ================================================================================
    MSG: campusrover_msgs/ElevatorInfo
    string building
    int64 id
    geometry_msgs/Point elevator_size 
    geometry_msgs/Point elevator_door_size 
    geometry_msgs/Pose outside_button_position 
    geometry_msgs/Pose inside_button_position 
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorInfoArray(null);
    if (msg.elevator_infos !== undefined) {
      resolved.elevator_infos = new Array(msg.elevator_infos.length);
      for (let i = 0; i < resolved.elevator_infos.length; ++i) {
        resolved.elevator_infos[i] = ElevatorInfo.Resolve(msg.elevator_infos[i]);
      }
    }
    else {
      resolved.elevator_infos = []
    }

    return resolved;
    }
};

module.exports = ElevatorInfoArray;
