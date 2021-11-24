// Auto-generated. Do not edit!

// (in-package jsk_topic_tools.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.periodic = null;
      this.periodic_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('periodic')) {
        this.periodic = initObj.periodic
      }
      else {
        this.periodic = false;
      }
      if (initObj.hasOwnProperty('periodic_rate')) {
        this.periodic_rate = initObj.periodic_rate
      }
      else {
        this.periodic_rate = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateRequest
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [periodic]
    bufferOffset = _serializer.bool(obj.periodic, buffer, bufferOffset);
    // Serialize message field [periodic_rate]
    bufferOffset = _serializer.duration(obj.periodic_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateRequest
    let len;
    let data = new UpdateRequest(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [periodic]
    data.periodic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [periodic_rate]
    data.periodic_rate = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic_name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_topic_tools/UpdateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0050acd5c94510531ac3023287e6b559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic_name
    bool periodic  # when true is set, periodic publish starts. when false, it stops. do nothing when this is empty.
    duration periodic_rate # when periodic is true, periodic publish starts at this rate.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateRequest(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.periodic !== undefined) {
      resolved.periodic = msg.periodic;
    }
    else {
      resolved.periodic = false
    }

    if (msg.periodic_rate !== undefined) {
      resolved.periodic_rate = msg.periodic_rate;
    }
    else {
      resolved.periodic_rate = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class UpdateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rate = null;
    }
    else {
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateResponse
    // Serialize message field [rate]
    bufferOffset = _serializer.float64(obj.rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateResponse
    let len;
    let data = new UpdateResponse(null);
    // Deserialize message field [rate]
    data.rate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_topic_tools/UpdateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4910f3d55cbb29566b6c8f8f16528adf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rate
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateResponse(null);
    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateRequest,
  Response: UpdateResponse,
  md5sum() { return 'ace79f60f838c917f96ff83267699173'; },
  datatype() { return 'jsk_topic_tools/Update'; }
};
