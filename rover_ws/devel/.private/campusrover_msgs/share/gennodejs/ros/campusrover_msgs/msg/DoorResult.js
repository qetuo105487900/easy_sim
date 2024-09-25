// Auto-generated. Do not edit!

// (in-package campusrover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DoorResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_door_status = null;
      this.rate_bottom_left = null;
      this.rate_door_left = null;
      this.rate_middle_left = null;
      this.right_door_status = null;
      this.rate_bottom_right = null;
      this.rate_door_right = null;
      this.rate_middle_right = null;
      this.locate = null;
    }
    else {
      if (initObj.hasOwnProperty('left_door_status')) {
        this.left_door_status = initObj.left_door_status
      }
      else {
        this.left_door_status = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rate_bottom_left')) {
        this.rate_bottom_left = initObj.rate_bottom_left
      }
      else {
        this.rate_bottom_left = 0.0;
      }
      if (initObj.hasOwnProperty('rate_door_left')) {
        this.rate_door_left = initObj.rate_door_left
      }
      else {
        this.rate_door_left = 0.0;
      }
      if (initObj.hasOwnProperty('rate_middle_left')) {
        this.rate_middle_left = initObj.rate_middle_left
      }
      else {
        this.rate_middle_left = 0.0;
      }
      if (initObj.hasOwnProperty('right_door_status')) {
        this.right_door_status = initObj.right_door_status
      }
      else {
        this.right_door_status = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rate_bottom_right')) {
        this.rate_bottom_right = initObj.rate_bottom_right
      }
      else {
        this.rate_bottom_right = 0.0;
      }
      if (initObj.hasOwnProperty('rate_door_right')) {
        this.rate_door_right = initObj.rate_door_right
      }
      else {
        this.rate_door_right = 0.0;
      }
      if (initObj.hasOwnProperty('rate_middle_right')) {
        this.rate_middle_right = initObj.rate_middle_right
      }
      else {
        this.rate_middle_right = 0.0;
      }
      if (initObj.hasOwnProperty('locate')) {
        this.locate = initObj.locate
      }
      else {
        this.locate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorResult
    // Serialize message field [left_door_status]
    bufferOffset = std_msgs.msg.Header.serialize(obj.left_door_status, buffer, bufferOffset);
    // Serialize message field [rate_bottom_left]
    bufferOffset = _serializer.float32(obj.rate_bottom_left, buffer, bufferOffset);
    // Serialize message field [rate_door_left]
    bufferOffset = _serializer.float32(obj.rate_door_left, buffer, bufferOffset);
    // Serialize message field [rate_middle_left]
    bufferOffset = _serializer.float32(obj.rate_middle_left, buffer, bufferOffset);
    // Serialize message field [right_door_status]
    bufferOffset = std_msgs.msg.Header.serialize(obj.right_door_status, buffer, bufferOffset);
    // Serialize message field [rate_bottom_right]
    bufferOffset = _serializer.float32(obj.rate_bottom_right, buffer, bufferOffset);
    // Serialize message field [rate_door_right]
    bufferOffset = _serializer.float32(obj.rate_door_right, buffer, bufferOffset);
    // Serialize message field [rate_middle_right]
    bufferOffset = _serializer.float32(obj.rate_middle_right, buffer, bufferOffset);
    // Serialize message field [locate]
    bufferOffset = _serializer.string(obj.locate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorResult
    let len;
    let data = new DoorResult(null);
    // Deserialize message field [left_door_status]
    data.left_door_status = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rate_bottom_left]
    data.rate_bottom_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rate_door_left]
    data.rate_door_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rate_middle_left]
    data.rate_middle_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_door_status]
    data.right_door_status = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rate_bottom_right]
    data.rate_bottom_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rate_door_right]
    data.rate_door_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rate_middle_right]
    data.rate_middle_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [locate]
    data.locate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.left_door_status);
    length += std_msgs.msg.Header.getMessageSize(object.right_door_status);
    length += _getByteLength(object.locate);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/DoorResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c07e76e4878ab6c525aa5c9ac930982';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header left_door_status
    float32 rate_bottom_left
    float32 rate_door_left
    float32 rate_middle_left
    
    std_msgs/Header right_door_status
    float32 rate_bottom_right
    float32 rate_door_right
    float32 rate_middle_right
    
    string locate
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorResult(null);
    if (msg.left_door_status !== undefined) {
      resolved.left_door_status = std_msgs.msg.Header.Resolve(msg.left_door_status)
    }
    else {
      resolved.left_door_status = new std_msgs.msg.Header()
    }

    if (msg.rate_bottom_left !== undefined) {
      resolved.rate_bottom_left = msg.rate_bottom_left;
    }
    else {
      resolved.rate_bottom_left = 0.0
    }

    if (msg.rate_door_left !== undefined) {
      resolved.rate_door_left = msg.rate_door_left;
    }
    else {
      resolved.rate_door_left = 0.0
    }

    if (msg.rate_middle_left !== undefined) {
      resolved.rate_middle_left = msg.rate_middle_left;
    }
    else {
      resolved.rate_middle_left = 0.0
    }

    if (msg.right_door_status !== undefined) {
      resolved.right_door_status = std_msgs.msg.Header.Resolve(msg.right_door_status)
    }
    else {
      resolved.right_door_status = new std_msgs.msg.Header()
    }

    if (msg.rate_bottom_right !== undefined) {
      resolved.rate_bottom_right = msg.rate_bottom_right;
    }
    else {
      resolved.rate_bottom_right = 0.0
    }

    if (msg.rate_door_right !== undefined) {
      resolved.rate_door_right = msg.rate_door_right;
    }
    else {
      resolved.rate_door_right = 0.0
    }

    if (msg.rate_middle_right !== undefined) {
      resolved.rate_middle_right = msg.rate_middle_right;
    }
    else {
      resolved.rate_middle_right = 0.0
    }

    if (msg.locate !== undefined) {
      resolved.locate = msg.locate;
    }
    else {
      resolved.locate = ''
    }

    return resolved;
    }
};

module.exports = DoorResult;
