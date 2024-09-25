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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapInitPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.floor = null;
      this.init_point = null;
    }
    else {
      if (initObj.hasOwnProperty('building')) {
        this.building = initObj.building
      }
      else {
        this.building = '';
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = '';
      }
      if (initObj.hasOwnProperty('init_point')) {
        this.init_point = initObj.init_point
      }
      else {
        this.init_point = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInitPoseRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    // Serialize message field [init_point]
    bufferOffset = _serializer.string(obj.init_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInitPoseRequest
    let len;
    let data = new MapInitPoseRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [init_point]
    data.init_point = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    length += _getByteLength(object.floor);
    length += _getByteLength(object.init_point);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapInitPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0fbe64a4a5efcd8c5df81f9c6d224fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    string floor
    string init_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapInitPoseRequest(null);
    if (msg.building !== undefined) {
      resolved.building = msg.building;
    }
    else {
      resolved.building = ''
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = ''
    }

    if (msg.init_point !== undefined) {
      resolved.init_point = msg.init_point;
    }
    else {
      resolved.init_point = ''
    }

    return resolved;
    }
};

class MapInitPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInitPoseResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInitPoseResponse
    let len;
    let data = new MapInitPoseResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapInitPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f8930d968a3e84d471dff917bb1cdae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new MapInitPoseResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: MapInitPoseRequest,
  Response: MapInitPoseResponse,
  md5sum() { return '9e35deb61797247ebf906a6ce49e2644'; },
  datatype() { return 'campusrover_msgs/MapInitPose'; }
};
