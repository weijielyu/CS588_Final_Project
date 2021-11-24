// Auto-generated. Do not edit!

// (in-package jsk_gui_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Touch = require('./Touch.js');

//-----------------------------------------------------------

class MultiTouch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.touches = null;
    }
    else {
      if (initObj.hasOwnProperty('touches')) {
        this.touches = initObj.touches
      }
      else {
        this.touches = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiTouch
    // Serialize message field [touches]
    // Serialize the length for message field [touches]
    bufferOffset = _serializer.uint32(obj.touches.length, buffer, bufferOffset);
    obj.touches.forEach((val) => {
      bufferOffset = Touch.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiTouch
    let len;
    let data = new MultiTouch(null);
    // Deserialize message field [touches]
    // Deserialize array length for message field [touches]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.touches = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.touches[i] = Touch.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.touches.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/MultiTouch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f4a309588ef669e69a71aa5601ea65e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Touch[] touches
    ================================================================================
    MSG: jsk_gui_msgs/Touch
    # finger_id
    int64 finger_id
    # touch point(screen point)
    float64 x
    float64 y
    # based image size (usually not needed)
    int64 image_width
    int64 image_height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiTouch(null);
    if (msg.touches !== undefined) {
      resolved.touches = new Array(msg.touches.length);
      for (let i = 0; i < resolved.touches.length; ++i) {
        resolved.touches[i] = Touch.Resolve(msg.touches[i]);
      }
    }
    else {
      resolved.touches = []
    }

    return resolved;
    }
};

module.exports = MultiTouch;
