// Auto-generated. Do not edit!

// (in-package jsk_gui_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Action = require('./Action.js');
let DeviceSensor = require('./DeviceSensor.js');
let Touch = require('./Touch.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Tablet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hardware_name = null;
      this.hardware_id = null;
      this.action = null;
      this.sensor = null;
      this.touches = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hardware_name')) {
        this.hardware_name = initObj.hardware_name
      }
      else {
        this.hardware_name = '';
      }
      if (initObj.hasOwnProperty('hardware_id')) {
        this.hardware_id = initObj.hardware_id
      }
      else {
        this.hardware_id = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new Action();
      }
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = new DeviceSensor();
      }
      if (initObj.hasOwnProperty('touches')) {
        this.touches = initObj.touches
      }
      else {
        this.touches = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tablet
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hardware_name]
    bufferOffset = _serializer.string(obj.hardware_name, buffer, bufferOffset);
    // Serialize message field [hardware_id]
    bufferOffset = _serializer.string(obj.hardware_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = Action.serialize(obj.action, buffer, bufferOffset);
    // Serialize message field [sensor]
    bufferOffset = DeviceSensor.serialize(obj.sensor, buffer, bufferOffset);
    // Serialize message field [touches]
    // Serialize the length for message field [touches]
    bufferOffset = _serializer.uint32(obj.touches.length, buffer, bufferOffset);
    obj.touches.forEach((val) => {
      bufferOffset = Touch.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tablet
    let len;
    let data = new Tablet(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hardware_name]
    data.hardware_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_id]
    data.hardware_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = Action.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor]
    data.sensor = DeviceSensor.deserialize(buffer, bufferOffset);
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
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.hardware_name);
    length += _getByteLength(object.hardware_id);
    length += Action.getMessageSize(object.action);
    length += 40 * object.touches.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/Tablet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bab196c7b214826d8c27d7bd5f924f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # hardware_namel: iPad, Android, other mobile
    string hardware_name
    string hardware_id
    Action action
    DeviceSensor sensor
    Touch[] touches
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: jsk_gui_msgs/Action
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
    ================================================================================
    MSG: jsk_gui_msgs/DeviceSensor
    float64 temperature
    float64 relative_humidity
    float64 light
    float64 pressure
    float64 proximity
    
    
    
    
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
    const resolved = new Tablet(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hardware_name !== undefined) {
      resolved.hardware_name = msg.hardware_name;
    }
    else {
      resolved.hardware_name = ''
    }

    if (msg.hardware_id !== undefined) {
      resolved.hardware_id = msg.hardware_id;
    }
    else {
      resolved.hardware_id = ''
    }

    if (msg.action !== undefined) {
      resolved.action = Action.Resolve(msg.action)
    }
    else {
      resolved.action = new Action()
    }

    if (msg.sensor !== undefined) {
      resolved.sensor = DeviceSensor.Resolve(msg.sensor)
    }
    else {
      resolved.sensor = new DeviceSensor()
    }

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

module.exports = Tablet;
