// Auto-generated. Do not edit!

// (in-package campusrover_move.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PullOverPathGeneratorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pullover_forward_dis = null;
      this.pullover_shift_dis = null;
      this.reference_path = null;
    }
    else {
      if (initObj.hasOwnProperty('pullover_forward_dis')) {
        this.pullover_forward_dis = initObj.pullover_forward_dis
      }
      else {
        this.pullover_forward_dis = 0.0;
      }
      if (initObj.hasOwnProperty('pullover_shift_dis')) {
        this.pullover_shift_dis = initObj.pullover_shift_dis
      }
      else {
        this.pullover_shift_dis = 0.0;
      }
      if (initObj.hasOwnProperty('reference_path')) {
        this.reference_path = initObj.reference_path
      }
      else {
        this.reference_path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PullOverPathGeneratorRequest
    // Serialize message field [pullover_forward_dis]
    bufferOffset = _serializer.float32(obj.pullover_forward_dis, buffer, bufferOffset);
    // Serialize message field [pullover_shift_dis]
    bufferOffset = _serializer.float32(obj.pullover_shift_dis, buffer, bufferOffset);
    // Serialize message field [reference_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.reference_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PullOverPathGeneratorRequest
    let len;
    let data = new PullOverPathGeneratorRequest(null);
    // Deserialize message field [pullover_forward_dis]
    data.pullover_forward_dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pullover_shift_dis]
    data.pullover_shift_dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reference_path]
    data.reference_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.reference_path);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_move/PullOverPathGeneratorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bbf2bacb4424b6cdf24fec780404fbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pullover_forward_dis
    float32 pullover_shift_dis
    nav_msgs/Path reference_path
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new PullOverPathGeneratorRequest(null);
    if (msg.pullover_forward_dis !== undefined) {
      resolved.pullover_forward_dis = msg.pullover_forward_dis;
    }
    else {
      resolved.pullover_forward_dis = 0.0
    }

    if (msg.pullover_shift_dis !== undefined) {
      resolved.pullover_shift_dis = msg.pullover_shift_dis;
    }
    else {
      resolved.pullover_shift_dis = 0.0
    }

    if (msg.reference_path !== undefined) {
      resolved.reference_path = nav_msgs.msg.Path.Resolve(msg.reference_path)
    }
    else {
      resolved.reference_path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

class PullOverPathGeneratorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pullover_path = null;
    }
    else {
      if (initObj.hasOwnProperty('pullover_path')) {
        this.pullover_path = initObj.pullover_path
      }
      else {
        this.pullover_path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PullOverPathGeneratorResponse
    // Serialize message field [pullover_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.pullover_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PullOverPathGeneratorResponse
    let len;
    let data = new PullOverPathGeneratorResponse(null);
    // Deserialize message field [pullover_path]
    data.pullover_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.pullover_path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_move/PullOverPathGeneratorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbd9a7ebc239827c111193e77fdabbdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path pullover_path
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new PullOverPathGeneratorResponse(null);
    if (msg.pullover_path !== undefined) {
      resolved.pullover_path = nav_msgs.msg.Path.Resolve(msg.pullover_path)
    }
    else {
      resolved.pullover_path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: PullOverPathGeneratorRequest,
  Response: PullOverPathGeneratorResponse,
  md5sum() { return 'dfefa0153fd3fa662715dead8fa03ae7'; },
  datatype() { return 'campusrover_move/PullOverPathGenerator'; }
};
