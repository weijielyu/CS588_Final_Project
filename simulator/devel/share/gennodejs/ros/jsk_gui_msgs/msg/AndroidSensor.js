// Auto-generated. Do not edit!

// (in-package jsk_gui_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AndroidSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
      this.orientation_x = null;
      this.orientation_y = null;
      this.orientation_z = null;
    }
    else {
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = 0.0;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_x')) {
        this.orientation_x = initObj.orientation_x
      }
      else {
        this.orientation_x = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_y')) {
        this.orientation_y = initObj.orientation_y
      }
      else {
        this.orientation_y = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_z')) {
        this.orientation_z = initObj.orientation_z
      }
      else {
        this.orientation_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AndroidSensor
    // Serialize message field [accel_x]
    bufferOffset = _serializer.float64(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.float64(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.float64(obj.accel_z, buffer, bufferOffset);
    // Serialize message field [orientation_x]
    bufferOffset = _serializer.float64(obj.orientation_x, buffer, bufferOffset);
    // Serialize message field [orientation_y]
    bufferOffset = _serializer.float64(obj.orientation_y, buffer, bufferOffset);
    // Serialize message field [orientation_z]
    bufferOffset = _serializer.float64(obj.orientation_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AndroidSensor
    let len;
    let data = new AndroidSensor(null);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_x]
    data.orientation_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_y]
    data.orientation_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_z]
    data.orientation_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/AndroidSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd832dbe3be7e7f061d963f2188f1a407';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sonsor for Tablet
    float64 accel_x
    float64 accel_y
    float64 accel_z
    float64 orientation_x
    float64 orientation_y
    float64 orientation_z
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AndroidSensor(null);
    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = 0.0
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = 0.0
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = 0.0
    }

    if (msg.orientation_x !== undefined) {
      resolved.orientation_x = msg.orientation_x;
    }
    else {
      resolved.orientation_x = 0.0
    }

    if (msg.orientation_y !== undefined) {
      resolved.orientation_y = msg.orientation_y;
    }
    else {
      resolved.orientation_y = 0.0
    }

    if (msg.orientation_z !== undefined) {
      resolved.orientation_z = msg.orientation_z;
    }
    else {
      resolved.orientation_z = 0.0
    }

    return resolved;
    }
};

module.exports = AndroidSensor;
