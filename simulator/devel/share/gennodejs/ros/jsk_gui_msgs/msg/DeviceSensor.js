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

class DeviceSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
      this.relative_humidity = null;
      this.light = null;
      this.pressure = null;
      this.proximity = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('relative_humidity')) {
        this.relative_humidity = initObj.relative_humidity
      }
      else {
        this.relative_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0.0;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
      if (initObj.hasOwnProperty('proximity')) {
        this.proximity = initObj.proximity
      }
      else {
        this.proximity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeviceSensor
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [relative_humidity]
    bufferOffset = _serializer.float64(obj.relative_humidity, buffer, bufferOffset);
    // Serialize message field [light]
    bufferOffset = _serializer.float64(obj.light, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float64(obj.pressure, buffer, bufferOffset);
    // Serialize message field [proximity]
    bufferOffset = _serializer.float64(obj.proximity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeviceSensor
    let len;
    let data = new DeviceSensor(null);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_humidity]
    data.relative_humidity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [light]
    data.light = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [proximity]
    data.proximity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/DeviceSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3861ba768b988b4c249337d4dc6552d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 temperature
    float64 relative_humidity
    float64 light
    float64 pressure
    float64 proximity
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeviceSensor(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.relative_humidity !== undefined) {
      resolved.relative_humidity = msg.relative_humidity;
    }
    else {
      resolved.relative_humidity = 0.0
    }

    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0.0
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    if (msg.proximity !== undefined) {
      resolved.proximity = msg.proximity;
    }
    else {
      resolved.proximity = 0.0
    }

    return resolved;
    }
};

module.exports = DeviceSensor;
