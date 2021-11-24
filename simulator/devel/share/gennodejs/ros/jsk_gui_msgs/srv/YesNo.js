// Auto-generated. Do not edit!

// (in-package jsk_gui_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class YesNoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YesNoRequest
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YesNoRequest
    let len;
    let data = new YesNoRequest(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_gui_msgs/YesNoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YesNoRequest(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

class YesNoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yes = null;
    }
    else {
      if (initObj.hasOwnProperty('yes')) {
        this.yes = initObj.yes
      }
      else {
        this.yes = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YesNoResponse
    // Serialize message field [yes]
    bufferOffset = _serializer.bool(obj.yes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YesNoResponse
    let len;
    let data = new YesNoResponse(null);
    // Deserialize message field [yes]
    data.yes = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_gui_msgs/YesNoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa7d186fb6268a501cd4c0c274f480ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool yes
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YesNoResponse(null);
    if (msg.yes !== undefined) {
      resolved.yes = msg.yes;
    }
    else {
      resolved.yes = false
    }

    return resolved;
    }
};

module.exports = {
  Request: YesNoRequest,
  Response: YesNoResponse,
  md5sum() { return '3e598b4f1452111e6b9ac5c2ccf2a61b'; },
  datatype() { return 'jsk_gui_msgs/YesNo'; }
};
