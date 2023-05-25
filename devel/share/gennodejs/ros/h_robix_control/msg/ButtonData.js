// Auto-generated. Do not edit!

// (in-package h_robix_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ButtonData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.right_front_leg = null;
      this.right_middle_leg = null;
      this.right_back_leg = null;
      this.left_front_leg = null;
      this.left_middle_leg = null;
      this.left_back_leg = null;
    }
    else {
      if (initObj.hasOwnProperty('right_front_leg')) {
        this.right_front_leg = initObj.right_front_leg
      }
      else {
        this.right_front_leg = false;
      }
      if (initObj.hasOwnProperty('right_middle_leg')) {
        this.right_middle_leg = initObj.right_middle_leg
      }
      else {
        this.right_middle_leg = false;
      }
      if (initObj.hasOwnProperty('right_back_leg')) {
        this.right_back_leg = initObj.right_back_leg
      }
      else {
        this.right_back_leg = false;
      }
      if (initObj.hasOwnProperty('left_front_leg')) {
        this.left_front_leg = initObj.left_front_leg
      }
      else {
        this.left_front_leg = false;
      }
      if (initObj.hasOwnProperty('left_middle_leg')) {
        this.left_middle_leg = initObj.left_middle_leg
      }
      else {
        this.left_middle_leg = false;
      }
      if (initObj.hasOwnProperty('left_back_leg')) {
        this.left_back_leg = initObj.left_back_leg
      }
      else {
        this.left_back_leg = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonData
    // Serialize message field [right_front_leg]
    bufferOffset = _serializer.bool(obj.right_front_leg, buffer, bufferOffset);
    // Serialize message field [right_middle_leg]
    bufferOffset = _serializer.bool(obj.right_middle_leg, buffer, bufferOffset);
    // Serialize message field [right_back_leg]
    bufferOffset = _serializer.bool(obj.right_back_leg, buffer, bufferOffset);
    // Serialize message field [left_front_leg]
    bufferOffset = _serializer.bool(obj.left_front_leg, buffer, bufferOffset);
    // Serialize message field [left_middle_leg]
    bufferOffset = _serializer.bool(obj.left_middle_leg, buffer, bufferOffset);
    // Serialize message field [left_back_leg]
    bufferOffset = _serializer.bool(obj.left_back_leg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonData
    let len;
    let data = new ButtonData(null);
    // Deserialize message field [right_front_leg]
    data.right_front_leg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_middle_leg]
    data.right_middle_leg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_back_leg]
    data.right_back_leg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_front_leg]
    data.left_front_leg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_middle_leg]
    data.left_middle_leg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_back_leg]
    data.left_back_leg = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'h_robix_control/ButtonData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '374b4b2e2aa0d2e31b123b1290f7a442';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool right_front_leg
    bool right_middle_leg
    bool right_back_leg
    bool left_front_leg
    bool left_middle_leg
    bool left_back_leg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonData(null);
    if (msg.right_front_leg !== undefined) {
      resolved.right_front_leg = msg.right_front_leg;
    }
    else {
      resolved.right_front_leg = false
    }

    if (msg.right_middle_leg !== undefined) {
      resolved.right_middle_leg = msg.right_middle_leg;
    }
    else {
      resolved.right_middle_leg = false
    }

    if (msg.right_back_leg !== undefined) {
      resolved.right_back_leg = msg.right_back_leg;
    }
    else {
      resolved.right_back_leg = false
    }

    if (msg.left_front_leg !== undefined) {
      resolved.left_front_leg = msg.left_front_leg;
    }
    else {
      resolved.left_front_leg = false
    }

    if (msg.left_middle_leg !== undefined) {
      resolved.left_middle_leg = msg.left_middle_leg;
    }
    else {
      resolved.left_middle_leg = false
    }

    if (msg.left_back_leg !== undefined) {
      resolved.left_back_leg = msg.left_back_leg;
    }
    else {
      resolved.left_back_leg = false
    }

    return resolved;
    }
};

module.exports = ButtonData;
