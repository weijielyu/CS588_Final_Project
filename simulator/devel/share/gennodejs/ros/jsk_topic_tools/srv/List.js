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

class ListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListRequest
    let len;
    let data = new ListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_topic_tools/ListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListRequest(null);
    return resolved;
    }
};

class ListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_names = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_names')) {
        this.topic_names = initObj.topic_names
      }
      else {
        this.topic_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListResponse
    // Serialize message field [topic_names]
    bufferOffset = _arraySerializer.string(obj.topic_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListResponse
    let len;
    let data = new ListResponse(null);
    // Deserialize message field [topic_names]
    data.topic_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.topic_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_topic_tools/ListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f88f7a076bf16dde010b2480af40dcdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] topic_names
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListResponse(null);
    if (msg.topic_names !== undefined) {
      resolved.topic_names = msg.topic_names;
    }
    else {
      resolved.topic_names = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListRequest,
  Response: ListResponse,
  md5sum() { return 'f88f7a076bf16dde010b2480af40dcdb'; },
  datatype() { return 'jsk_topic_tools/List'; }
};
