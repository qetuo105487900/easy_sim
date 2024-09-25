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

class MapPointPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.floor = null;
      this.point = null;
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
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPointPoseRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = _serializer.string(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPointPoseRequest
    let len;
    let data = new MapPointPoseRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    length += _getByteLength(object.floor);
    length += _getByteLength(object.point);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapPointPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8ca6a1e05ce4fb5003594ce1893e701';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    string floor
    string point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapPointPoseRequest(null);
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

    if (msg.point !== undefined) {
      resolved.point = msg.point;
    }
    else {
      resolved.point = ''
    }

    return resolved;
    }
};

class MapPointPoseResponse {
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
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPointPoseResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPointPoseResponse
    let len;
    let data = new MapPointPoseResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapPointPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f192399f711a48924df9a394d37edd67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose
    
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
    const resolved = new MapPointPoseResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: MapPointPoseRequest,
  Response: MapPointPoseResponse,
  md5sum() { return '9fe5216ac464279e66a2d885233c843b'; },
  datatype() { return 'campusrover_msgs/MapPointPose'; }
};
