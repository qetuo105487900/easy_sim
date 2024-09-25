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

class MapLoadInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building = null;
      this.floor = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLoadInfoRequest
    // Serialize message field [building]
    bufferOffset = _serializer.string(obj.building, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLoadInfoRequest
    let len;
    let data = new MapLoadInfoRequest(null);
    // Deserialize message field [building]
    data.building = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building);
    length += _getByteLength(object.floor);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapLoadInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b15058aba057dc225e6ed360700b819';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string building
    string floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLoadInfoRequest(null);
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

    return resolved;
    }
};

class MapLoadInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tf = null;
    }
    else {
      if (initObj.hasOwnProperty('tf')) {
        this.tf = initObj.tf
      }
      else {
        this.tf = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLoadInfoResponse
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.tf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLoadInfoResponse
    let len;
    let data = new MapLoadInfoResponse(null);
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.tf);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'campusrover_msgs/MapLoadInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7dbfa9c99c7708b4cc36a09e86a749c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/TransformStamped tf
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    const resolved = new MapLoadInfoResponse(null);
    if (msg.tf !== undefined) {
      resolved.tf = geometry_msgs.msg.TransformStamped.Resolve(msg.tf)
    }
    else {
      resolved.tf = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: MapLoadInfoRequest,
  Response: MapLoadInfoResponse,
  md5sum() { return '93a21f63b64b29785779efda16301551'; },
  datatype() { return 'campusrover_msgs/MapLoadInfo'; }
};
