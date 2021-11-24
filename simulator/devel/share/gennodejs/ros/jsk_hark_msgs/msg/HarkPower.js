// Auto-generated. Do not edit!

// (in-package jsk_hark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HarkPower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.count = null;
      this.directions = null;
      this.data_bytes = null;
      this.powers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('directions')) {
        this.directions = initObj.directions
      }
      else {
        this.directions = 0;
      }
      if (initObj.hasOwnProperty('data_bytes')) {
        this.data_bytes = initObj.data_bytes
      }
      else {
        this.data_bytes = 0;
      }
      if (initObj.hasOwnProperty('powers')) {
        this.powers = initObj.powers
      }
      else {
        this.powers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HarkPower
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [directions]
    bufferOffset = _serializer.int32(obj.directions, buffer, bufferOffset);
    // Serialize message field [data_bytes]
    bufferOffset = _serializer.int32(obj.data_bytes, buffer, bufferOffset);
    // Serialize message field [powers]
    bufferOffset = _arraySerializer.float32(obj.powers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HarkPower
    let len;
    let data = new HarkPower(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [directions]
    data.directions = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_bytes]
    data.data_bytes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [powers]
    data.powers = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.powers.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_hark_msgs/HarkPower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '251c13d7a8be27144a2b24c6f53df705';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32  count
    int32  directions
    int32  data_bytes
    float32[] powers
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HarkPower(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.directions !== undefined) {
      resolved.directions = msg.directions;
    }
    else {
      resolved.directions = 0
    }

    if (msg.data_bytes !== undefined) {
      resolved.data_bytes = msg.data_bytes;
    }
    else {
      resolved.data_bytes = 0
    }

    if (msg.powers !== undefined) {
      resolved.powers = msg.powers;
    }
    else {
      resolved.powers = []
    }

    return resolved;
    }
};

module.exports = HarkPower;
