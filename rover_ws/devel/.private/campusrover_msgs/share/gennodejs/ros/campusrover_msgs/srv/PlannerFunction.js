// Auto-generated. Do not edit!

// (in-package campusrover_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlannerFunctionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.direction_inverse = null;
      this.obstacle_avoidance = null;
      this.mode = null;
      this.speed_parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('direction_inverse')) {
        this.direction_inverse = initObj.direction_inverse
      }
      else {
        this.direction_inverse = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('obstacle_avoidance')) {
        this.obstacle_avoidance = initObj.obstacle_avoidance
      }
      else {
        this.obstacle_avoidance = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('speed_parameter')) {
        this.speed_parameter = initObj.speed_parameter
      }
      else {
        this.speed_parameter = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerFunctionRequest
    // Serialize message field [action]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.action, buffer, bufferOffset);
    // Serialize message field [direction_inverse]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.direction_inverse, buffer, bufferOffset);
    // Serialize message field [obstacle_avoidance]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.obstacle_avoidance, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [speed_parameter]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.speed_parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerFunctionRequest
    let len;
    let data = new PlannerFunctionRequest(null);
    // Deserialize message field [action]
    data.action = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction_inverse]
    data.direction_inverse = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_avoidance]
    data.obstacle_avoidance = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_parameter]
    data.speed_parameter = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/PlannerFunctionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c60ec02ce4d0a2a87272560a3a28c93a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MODE_GLOBAL_PATH = 1
    uint8 MODE_ELEVATOR_PATH = 2
    uint8 MODE_BUTTON_PARKING = 3
    uint8 MODE_PULLOVER_PATH = 4
    std_msgs/Bool action
    std_msgs/Bool direction_inverse
    std_msgs/Bool obstacle_avoidance
    uint8 mode
    geometry_msgs/Twist speed_parameter
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerFunctionRequest(null);
    if (msg.action !== undefined) {
      resolved.action = std_msgs.msg.Bool.Resolve(msg.action)
    }
    else {
      resolved.action = new std_msgs.msg.Bool()
    }

    if (msg.direction_inverse !== undefined) {
      resolved.direction_inverse = std_msgs.msg.Bool.Resolve(msg.direction_inverse)
    }
    else {
      resolved.direction_inverse = new std_msgs.msg.Bool()
    }

    if (msg.obstacle_avoidance !== undefined) {
      resolved.obstacle_avoidance = std_msgs.msg.Bool.Resolve(msg.obstacle_avoidance)
    }
    else {
      resolved.obstacle_avoidance = new std_msgs.msg.Bool()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.speed_parameter !== undefined) {
      resolved.speed_parameter = geometry_msgs.msg.Twist.Resolve(msg.speed_parameter)
    }
    else {
      resolved.speed_parameter = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

// Constants for message
PlannerFunctionRequest.Constants = {
  MODE_GLOBAL_PATH: 1,
  MODE_ELEVATOR_PATH: 2,
  MODE_BUTTON_PARKING: 3,
  MODE_PULLOVER_PATH: 4,
}

class PlannerFunctionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerFunctionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerFunctionResponse
    let len;
    let data = new PlannerFunctionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/PlannerFunctionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerFunctionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: PlannerFunctionRequest,
  Response: PlannerFunctionResponse,
  md5sum() { return 'c60ec02ce4d0a2a87272560a3a28c93a'; },
  datatype() { return 'campusrover_msgs/PlannerFunction'; }
};
