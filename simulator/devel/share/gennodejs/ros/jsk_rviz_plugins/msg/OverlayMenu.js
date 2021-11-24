// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OverlayMenu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.current_index = null;
      this.menus = null;
      this.title = null;
      this.bg_color = null;
      this.fg_color = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('current_index')) {
        this.current_index = initObj.current_index
      }
      else {
        this.current_index = 0;
      }
      if (initObj.hasOwnProperty('menus')) {
        this.menus = initObj.menus
      }
      else {
        this.menus = [];
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('bg_color')) {
        this.bg_color = initObj.bg_color
      }
      else {
        this.bg_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('fg_color')) {
        this.fg_color = initObj.fg_color
      }
      else {
        this.fg_color = new std_msgs.msg.ColorRGBA();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverlayMenu
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [current_index]
    bufferOffset = _serializer.uint32(obj.current_index, buffer, bufferOffset);
    // Serialize message field [menus]
    bufferOffset = _arraySerializer.string(obj.menus, buffer, bufferOffset, null);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [bg_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.bg_color, buffer, bufferOffset);
    // Serialize message field [fg_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.fg_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverlayMenu
    let len;
    let data = new OverlayMenu(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_index]
    data.current_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [menus]
    data.menus = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bg_color]
    data.bg_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [fg_color]
    data.fg_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.menus.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.title);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/OverlayMenu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '517426ba068ca022d86cf2c56c98889f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ACTION_SELECT=0
    int32 ACTION_CLOSE=1
    int32 action
    uint32 current_index
    string[] menus
    string title
    std_msgs/ColorRGBA bg_color
    std_msgs/ColorRGBA fg_color
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OverlayMenu(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.current_index !== undefined) {
      resolved.current_index = msg.current_index;
    }
    else {
      resolved.current_index = 0
    }

    if (msg.menus !== undefined) {
      resolved.menus = msg.menus;
    }
    else {
      resolved.menus = []
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.bg_color !== undefined) {
      resolved.bg_color = std_msgs.msg.ColorRGBA.Resolve(msg.bg_color)
    }
    else {
      resolved.bg_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.fg_color !== undefined) {
      resolved.fg_color = std_msgs.msg.ColorRGBA.Resolve(msg.fg_color)
    }
    else {
      resolved.fg_color = new std_msgs.msg.ColorRGBA()
    }

    return resolved;
    }
};

// Constants for message
OverlayMenu.Constants = {
  ACTION_SELECT: 0,
  ACTION_CLOSE: 1,
}

module.exports = OverlayMenu;
