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

class VoiceMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.texts = null;
    }
    else {
      if (initObj.hasOwnProperty('texts')) {
        this.texts = initObj.texts
      }
      else {
        this.texts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoiceMessage
    // Serialize message field [texts]
    bufferOffset = _arraySerializer.string(obj.texts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoiceMessage
    let len;
    let data = new VoiceMessage(null);
    // Deserialize message field [texts]
    data.texts = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.texts.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/VoiceMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d7dcfb3b46640ccf02177a3f0cf9530';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] texts
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VoiceMessage(null);
    if (msg.texts !== undefined) {
      resolved.texts = msg.texts;
    }
    else {
      resolved.texts = []
    }

    return resolved;
    }
};

module.exports = VoiceMessage;
