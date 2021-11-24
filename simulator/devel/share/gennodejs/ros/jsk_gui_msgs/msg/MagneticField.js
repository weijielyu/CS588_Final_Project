// Auto-generated. Do not edit!

// (in-package jsk_gui_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MagneticField {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.magneticfield = null;
    }
    else {
      if (initObj.hasOwnProperty('magneticfield')) {
        this.magneticfield = initObj.magneticfield
      }
      else {
        this.magneticfield = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagneticField
    // Serialize message field [magneticfield]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.magneticfield, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagneticField
    let len;
    let data = new MagneticField(null);
    // Deserialize message field [magneticfield]
    data.magneticfield = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_gui_msgs/MagneticField';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a924df7c82a527d1b76508ed8354604b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 magneticfield
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagneticField(null);
    if (msg.magneticfield !== undefined) {
      resolved.magneticfield = geometry_msgs.msg.Vector3.Resolve(msg.magneticfield)
    }
    else {
      resolved.magneticfield = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = MagneticField;
