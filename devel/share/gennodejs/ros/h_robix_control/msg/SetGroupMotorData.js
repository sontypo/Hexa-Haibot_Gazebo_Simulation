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

class SetGroupMotorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor1_id = null;
      this.motor2_id = null;
      this.motor3_id = null;
      this.motor4_id = null;
      this.motor5_id = null;
      this.motor6_id = null;
      this.data_required = null;
      this.motor1_data = null;
      this.motor2_data = null;
      this.motor3_data = null;
      this.motor4_data = null;
      this.motor5_data = null;
      this.motor6_data = null;
    }
    else {
      if (initObj.hasOwnProperty('motor1_id')) {
        this.motor1_id = initObj.motor1_id
      }
      else {
        this.motor1_id = 0;
      }
      if (initObj.hasOwnProperty('motor2_id')) {
        this.motor2_id = initObj.motor2_id
      }
      else {
        this.motor2_id = 0;
      }
      if (initObj.hasOwnProperty('motor3_id')) {
        this.motor3_id = initObj.motor3_id
      }
      else {
        this.motor3_id = 0;
      }
      if (initObj.hasOwnProperty('motor4_id')) {
        this.motor4_id = initObj.motor4_id
      }
      else {
        this.motor4_id = 0;
      }
      if (initObj.hasOwnProperty('motor5_id')) {
        this.motor5_id = initObj.motor5_id
      }
      else {
        this.motor5_id = 0;
      }
      if (initObj.hasOwnProperty('motor6_id')) {
        this.motor6_id = initObj.motor6_id
      }
      else {
        this.motor6_id = 0;
      }
      if (initObj.hasOwnProperty('data_required')) {
        this.data_required = initObj.data_required
      }
      else {
        this.data_required = '';
      }
      if (initObj.hasOwnProperty('motor1_data')) {
        this.motor1_data = initObj.motor1_data
      }
      else {
        this.motor1_data = 0;
      }
      if (initObj.hasOwnProperty('motor2_data')) {
        this.motor2_data = initObj.motor2_data
      }
      else {
        this.motor2_data = 0;
      }
      if (initObj.hasOwnProperty('motor3_data')) {
        this.motor3_data = initObj.motor3_data
      }
      else {
        this.motor3_data = 0;
      }
      if (initObj.hasOwnProperty('motor4_data')) {
        this.motor4_data = initObj.motor4_data
      }
      else {
        this.motor4_data = 0;
      }
      if (initObj.hasOwnProperty('motor5_data')) {
        this.motor5_data = initObj.motor5_data
      }
      else {
        this.motor5_data = 0;
      }
      if (initObj.hasOwnProperty('motor6_data')) {
        this.motor6_data = initObj.motor6_data
      }
      else {
        this.motor6_data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGroupMotorData
    // Serialize message field [motor1_id]
    bufferOffset = _serializer.uint8(obj.motor1_id, buffer, bufferOffset);
    // Serialize message field [motor2_id]
    bufferOffset = _serializer.uint8(obj.motor2_id, buffer, bufferOffset);
    // Serialize message field [motor3_id]
    bufferOffset = _serializer.uint8(obj.motor3_id, buffer, bufferOffset);
    // Serialize message field [motor4_id]
    bufferOffset = _serializer.uint8(obj.motor4_id, buffer, bufferOffset);
    // Serialize message field [motor5_id]
    bufferOffset = _serializer.uint8(obj.motor5_id, buffer, bufferOffset);
    // Serialize message field [motor6_id]
    bufferOffset = _serializer.uint8(obj.motor6_id, buffer, bufferOffset);
    // Serialize message field [data_required]
    bufferOffset = _serializer.string(obj.data_required, buffer, bufferOffset);
    // Serialize message field [motor1_data]
    bufferOffset = _serializer.int32(obj.motor1_data, buffer, bufferOffset);
    // Serialize message field [motor2_data]
    bufferOffset = _serializer.int32(obj.motor2_data, buffer, bufferOffset);
    // Serialize message field [motor3_data]
    bufferOffset = _serializer.int32(obj.motor3_data, buffer, bufferOffset);
    // Serialize message field [motor4_data]
    bufferOffset = _serializer.int32(obj.motor4_data, buffer, bufferOffset);
    // Serialize message field [motor5_data]
    bufferOffset = _serializer.int32(obj.motor5_data, buffer, bufferOffset);
    // Serialize message field [motor6_data]
    bufferOffset = _serializer.int32(obj.motor6_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGroupMotorData
    let len;
    let data = new SetGroupMotorData(null);
    // Deserialize message field [motor1_id]
    data.motor1_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor2_id]
    data.motor2_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor3_id]
    data.motor3_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor4_id]
    data.motor4_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor5_id]
    data.motor5_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor6_id]
    data.motor6_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_required]
    data.data_required = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motor1_data]
    data.motor1_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor2_data]
    data.motor2_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor3_data]
    data.motor3_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor4_data]
    data.motor4_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor5_data]
    data.motor5_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor6_data]
    data.motor6_data = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data_required);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'h_robix_control/SetGroupMotorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd24f6d6ff0914be0afb7864c32f01a60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 motor1_id
    uint8 motor2_id
    uint8 motor3_id
    uint8 motor4_id
    uint8 motor5_id
    uint8 motor6_id
    string data_required
    int32 motor1_data
    int32 motor2_data
    int32 motor3_data
    int32 motor4_data
    int32 motor5_data
    int32 motor6_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGroupMotorData(null);
    if (msg.motor1_id !== undefined) {
      resolved.motor1_id = msg.motor1_id;
    }
    else {
      resolved.motor1_id = 0
    }

    if (msg.motor2_id !== undefined) {
      resolved.motor2_id = msg.motor2_id;
    }
    else {
      resolved.motor2_id = 0
    }

    if (msg.motor3_id !== undefined) {
      resolved.motor3_id = msg.motor3_id;
    }
    else {
      resolved.motor3_id = 0
    }

    if (msg.motor4_id !== undefined) {
      resolved.motor4_id = msg.motor4_id;
    }
    else {
      resolved.motor4_id = 0
    }

    if (msg.motor5_id !== undefined) {
      resolved.motor5_id = msg.motor5_id;
    }
    else {
      resolved.motor5_id = 0
    }

    if (msg.motor6_id !== undefined) {
      resolved.motor6_id = msg.motor6_id;
    }
    else {
      resolved.motor6_id = 0
    }

    if (msg.data_required !== undefined) {
      resolved.data_required = msg.data_required;
    }
    else {
      resolved.data_required = ''
    }

    if (msg.motor1_data !== undefined) {
      resolved.motor1_data = msg.motor1_data;
    }
    else {
      resolved.motor1_data = 0
    }

    if (msg.motor2_data !== undefined) {
      resolved.motor2_data = msg.motor2_data;
    }
    else {
      resolved.motor2_data = 0
    }

    if (msg.motor3_data !== undefined) {
      resolved.motor3_data = msg.motor3_data;
    }
    else {
      resolved.motor3_data = 0
    }

    if (msg.motor4_data !== undefined) {
      resolved.motor4_data = msg.motor4_data;
    }
    else {
      resolved.motor4_data = 0
    }

    if (msg.motor5_data !== undefined) {
      resolved.motor5_data = msg.motor5_data;
    }
    else {
      resolved.motor5_data = 0
    }

    if (msg.motor6_data !== undefined) {
      resolved.motor6_data = msg.motor6_data;
    }
    else {
      resolved.motor6_data = 0
    }

    return resolved;
    }
};

module.exports = SetGroupMotorData;
