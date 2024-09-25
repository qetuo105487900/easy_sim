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

let ElevatorInfoArray = require('../msg/ElevatorInfoArray.js');

//-----------------------------------------------------------

class ElevatorInfoReaderRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.elevator_id = null;
    }
    else {
      if (initObj.hasOwnProperty('building')) {
        this.building = initObj.building
      }
      else {
        this.building = '';
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
    // Serializes a message object of type ElevatorInfoReaderRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [elevator_id]
    bufferOffset = _serializer.int8(obj.elevator_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorInfoReaderRequest
    let len;
    let data = new ElevatorInfoReaderRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_id]
    data.elevator_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorInfoReaderRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6355ffc837f90aefb88f1c73ab16c96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    int8 elevator_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorInfoReaderRequest(null);
    if (msg.building !== undefined) {
      resolved.building = msg.building;
    }
    else {
      resolved.building = ''
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

class ElevatorInfoReaderResponse {
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
        this.elevator_infos = new ElevatorInfoArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorInfoReaderResponse
    // Serialize message field [elevator_infos]
    bufferOffset = ElevatorInfoArray.serialize(obj.elevator_infos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorInfoReaderResponse
    let len;
    let data = new ElevatorInfoReaderResponse(null);
    // Deserialize message field [elevator_infos]
    data.elevator_infos = ElevatorInfoArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ElevatorInfoArray.getMessageSize(object.elevator_infos);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/ElevatorInfoReaderResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c607ecc561a055b01a0c7c7dcdc1aa21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ElevatorInfoArray elevator_infos
    
    ================================================================================
    MSG: campusrover_msgs/ElevatorInfoArray
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
    const resolved = new ElevatorInfoReaderResponse(null);
    if (msg.elevator_infos !== undefined) {
      resolved.elevator_infos = ElevatorInfoArray.Resolve(msg.elevator_infos)
    }
    else {
      resolved.elevator_infos = new ElevatorInfoArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: ElevatorInfoReaderRequest,
  Response: ElevatorInfoReaderResponse,
  md5sum() { return '5b0fce0ae6e42e7d4a2cd3e0f8048504'; },
  datatype() { return 'campusrover_msgs/ElevatorInfoReader'; }
};
