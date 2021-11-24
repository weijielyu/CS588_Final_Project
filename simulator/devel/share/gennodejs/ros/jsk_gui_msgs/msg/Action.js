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

class Action {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_name = null;
      this.arm_id = null;
      this.state = null;
      this.state_value = null;
      this.direction = null;
      this.direction_value = null;
      this.touch_x = null;
      this.touch_y = null;
    }
    else {
      if (initObj.hasOwnProperty('task_name')) {
        this.task_name = initObj.task_name
      }
      else {
        this.task_name = '';
      }
      if (initObj.hasOwnProperty('arm_id')) {
        this.arm_id = initObj.arm_id
      }
      else {
        this.arm_id = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('state_value')) {
        this.state_value = initObj.state_value
      }
      else {
        this.state_value = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('direction_value')) {
        this.direction_value = initObj.direction_value
      }
      else {
        this.direction_value = 0.0;
      }
      if (initObj.hasOwnProperty('touch_x')) {
        this.touch_x = initObj.touch_x
      }
      else {
        this.touch_x = 0;
      }
      if (initObj.hasOwnProperty('touch_y')) {
        this.touch_y = initObj.touch_y
      }
      else {
        this.touch_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Action
    // Serialize message field [task_name]
    bufferOffset = _serializer.string(obj.task_name, buffer, bufferOffset);
    // Serialize message field [arm_id]
    bufferOffset = _serializer.int64(obj.arm_id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [state_value]
    bufferOffset = _serializer.float64(obj.state_value, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [direction_value]
    bufferOffset = _serializer.float64(obj.direction_value, buffer, bufferOffset);
    // Serialize message field [touch_x]
    bufferOffset = _serializer.int64(obj.touch_x, buffer, bufferOffset);
    // Serialize message field [touch_y]
    bufferOffset = _serializer.int64(obj.touch_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Action
    let len;
    let data = new Action(null);
    // Deserialize message field [task_name]
    data.task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arm_id]
    data.arm_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_value]
    data.state_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [direction_value]
    data.direction_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [touch_x]
    data.touch_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [touch_y]
    data.touch_y = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.task_name);
    length += _getByteLength(object.state);
    length += _getByteLength(object.direction);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/Action';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd81dc8475ff89ce7097d2e73ebfc2591';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte RARMID=0
    byte LARMID=1
    
    # task: push, pick, open, slide, MoveNeck, MoveBase
    string task_name
    
    # selection: button names
    # string selection_name
    
    # arm: :rarm, :lsrm
    int64 arm_id
    
    # state of touch: touch, pick, pinch, sweep
    # for debugging
    string state
    # value of state
    float64 state_value
    
    # direction: up, down, left, right
    string direction
    # value of direction, degree
    float64 direction_value
    
    int64 touch_x
    int64 touch_y
    
    # Example
    #  push: touches[0].x, touches[0].y, task_name, arm_id
    #  open: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id
    #  slide: touches[0 1 2].x, touches[0 1 2].y, task_name, arm_id
    #  move_neck: task_name, direction, direction_value
    #  move_base: task_name, direction, direction_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Action(null);
    if (msg.task_name !== undefined) {
      resolved.task_name = msg.task_name;
    }
    else {
      resolved.task_name = ''
    }

    if (msg.arm_id !== undefined) {
      resolved.arm_id = msg.arm_id;
    }
    else {
      resolved.arm_id = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.state_value !== undefined) {
      resolved.state_value = msg.state_value;
    }
    else {
      resolved.state_value = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.direction_value !== undefined) {
      resolved.direction_value = msg.direction_value;
    }
    else {
      resolved.direction_value = 0.0
    }

    if (msg.touch_x !== undefined) {
      resolved.touch_x = msg.touch_x;
    }
    else {
      resolved.touch_x = 0
    }

    if (msg.touch_y !== undefined) {
      resolved.touch_y = msg.touch_y;
    }
    else {
      resolved.touch_y = 0
    }

    return resolved;
    }
};

// Constants for message
Action.Constants = {
  RARMID: 0,
  LARMID: 1,
}

module.exports = Action;
