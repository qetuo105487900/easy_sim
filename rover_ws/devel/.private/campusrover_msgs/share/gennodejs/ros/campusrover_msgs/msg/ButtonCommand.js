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

class ButtonCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_name = null;
      this.command_type = null;
    }
    else {
      if (initObj.hasOwnProperty('button_name')) {
        this.button_name = initObj.button_name
      }
      else {
        this.button_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonCommand
    // Serialize message field [button_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.button_name, buffer, bufferOffset);
    // Serialize message field [command_type]
    bufferOffset = std_msgs.msg.String.serialize(obj.command_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonCommand
    let len;
    let data = new ButtonCommand(null);
    // Deserialize message field [button_name]
    data.button_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_type]
    data.command_type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.button_name);
    length += std_msgs.msg.String.getMessageSize(object.command_type);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'campusrover_msgs/ButtonCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf26bb118be6044a4021152a65bf823f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String button_name
    std_msgs/String command_type
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonCommand(null);
    if (msg.button_name !== undefined) {
      resolved.button_name = std_msgs.msg.String.Resolve(msg.button_name)
    }
    else {
      resolved.button_name = new std_msgs.msg.String()
    }

    if (msg.command_type !== undefined) {
      resolved.command_type = std_msgs.msg.String.Resolve(msg.command_type)
    }
    else {
      resolved.command_type = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ButtonCommand;
