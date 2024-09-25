// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ElevatorInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.id = null;
      this.elevator_size = null;
      this.elevator_door_size = null;
      this.outside_button_position = null;
      this.inside_button_position = null;
    }
    else {
      if (initObj.hasOwnProperty('building')) {
        this.building = initObj.building
      }
      else {
        this.building = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('elevator_size')) {
        this.elevator_size = initObj.elevator_size
      }
      else {
        this.elevator_size = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('elevator_door_size')) {
        this.elevator_door_size = initObj.elevator_door_size
      }
      else {
        this.elevator_door_size = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('outside_button_position')) {
        this.outside_button_position = initObj.outside_button_position
      }
      else {
        this.outside_button_position = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('inside_button_position')) {
        this.inside_button_position = initObj.inside_button_position
      }
      else {
        this.inside_button_position = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorInfo
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [elevator_size]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.elevator_size, buffer, bufferOffset);
    // Serialize message field [elevator_door_size]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.elevator_door_size, buffer, bufferOffset);
    // Serialize message field [outside_button_position]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.outside_button_position, buffer, bufferOffset);
    // Serialize message field [inside_button_position]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.inside_button_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorInfo
    let len;
    let data = new ElevatorInfo(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [elevator_size]
    data.elevator_size = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [elevator_door_size]
    data.elevator_door_size = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [outside_button_position]
    data.outside_button_position = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [inside_button_position]
    data.inside_button_position = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    return length + 172;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ElevatorInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c883c73d006814a134d52feb5eae455e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ElevatorInfo(null);
    if (msg.building !== undefined) {
      resolved.building = msg.building;
    }
    else {
      resolved.building = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.elevator_size !== undefined) {
      resolved.elevator_size = geometry_msgs.msg.Point.Resolve(msg.elevator_size)
    }
    else {
      resolved.elevator_size = new geometry_msgs.msg.Point()
    }

    if (msg.elevator_door_size !== undefined) {
      resolved.elevator_door_size = geometry_msgs.msg.Point.Resolve(msg.elevator_door_size)
    }
    else {
      resolved.elevator_door_size = new geometry_msgs.msg.Point()
    }

    if (msg.outside_button_position !== undefined) {
      resolved.outside_button_position = geometry_msgs.msg.Pose.Resolve(msg.outside_button_position)
    }
    else {
      resolved.outside_button_position = new geometry_msgs.msg.Pose()
    }

    if (msg.inside_button_position !== undefined) {
      resolved.inside_button_position = geometry_msgs.msg.Pose.Resolve(msg.inside_button_position)
    }
    else {
      resolved.inside_button_position = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = ElevatorInfo;
