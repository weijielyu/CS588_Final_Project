// Auto-generated. Do not edit!

// (in-package view_controller_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CameraPlacement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interpolation_mode = null;
      this.target_frame = null;
      this.time_from_start = null;
      this.eye = null;
      this.focus = null;
      this.up = null;
      this.mouse_interaction_mode = null;
      this.interaction_disabled = null;
      this.allow_free_yaw_axis = null;
    }
    else {
      if (initObj.hasOwnProperty('interpolation_mode')) {
        this.interpolation_mode = initObj.interpolation_mode
      }
      else {
        this.interpolation_mode = 0;
      }
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = '';
      }
      if (initObj.hasOwnProperty('time_from_start')) {
        this.time_from_start = initObj.time_from_start
      }
      else {
        this.time_from_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('eye')) {
        this.eye = initObj.eye
      }
      else {
        this.eye = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('focus')) {
        this.focus = initObj.focus
      }
      else {
        this.focus = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('up')) {
        this.up = initObj.up
      }
      else {
        this.up = new geometry_msgs.msg.Vector3Stamped();
      }
      if (initObj.hasOwnProperty('mouse_interaction_mode')) {
        this.mouse_interaction_mode = initObj.mouse_interaction_mode
      }
      else {
        this.mouse_interaction_mode = 0;
      }
      if (initObj.hasOwnProperty('interaction_disabled')) {
        this.interaction_disabled = initObj.interaction_disabled
      }
      else {
        this.interaction_disabled = false;
      }
      if (initObj.hasOwnProperty('allow_free_yaw_axis')) {
        this.allow_free_yaw_axis = initObj.allow_free_yaw_axis
      }
      else {
        this.allow_free_yaw_axis = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraPlacement
    // Serialize message field [interpolation_mode]
    bufferOffset = _serializer.uint8(obj.interpolation_mode, buffer, bufferOffset);
    // Serialize message field [target_frame]
    bufferOffset = _serializer.string(obj.target_frame, buffer, bufferOffset);
    // Serialize message field [time_from_start]
    bufferOffset = _serializer.duration(obj.time_from_start, buffer, bufferOffset);
    // Serialize message field [eye]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.eye, buffer, bufferOffset);
    // Serialize message field [focus]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.focus, buffer, bufferOffset);
    // Serialize message field [up]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.up, buffer, bufferOffset);
    // Serialize message field [mouse_interaction_mode]
    bufferOffset = _serializer.uint8(obj.mouse_interaction_mode, buffer, bufferOffset);
    // Serialize message field [interaction_disabled]
    bufferOffset = _serializer.bool(obj.interaction_disabled, buffer, bufferOffset);
    // Serialize message field [allow_free_yaw_axis]
    bufferOffset = _serializer.bool(obj.allow_free_yaw_axis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraPlacement
    let len;
    let data = new CameraPlacement(null);
    // Deserialize message field [interpolation_mode]
    data.interpolation_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_frame]
    data.target_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time_from_start]
    data.time_from_start = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [eye]
    data.eye = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [focus]
    data.focus = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [up]
    data.up = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [mouse_interaction_mode]
    data.mouse_interaction_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [interaction_disabled]
    data.interaction_disabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [allow_free_yaw_axis]
    data.allow_free_yaw_axis = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_frame);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.eye);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.focus);
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.up);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'view_controller_msgs/CameraPlacement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38be6efe15caa86e2c835dd05ab88393';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The interpolation mode to use during this step
    uint8 interpolation_mode
    uint8 LINEAR    = 0 # Positions will be linearly interpolated
    uint8 SPHERICAL = 1 # Position and orientation will be interpolated in a spherical sense.
    
    # Sets this as the camera attached (fixed) frame before movement.
    # An empty string will leave the attached frame unchanged. 
    string target_frame
    
    # When should this pose be reached?
    # A negative value will disable the pose command altogether.
    duration time_from_start
    
    # The frame-relative point for the camera.
    geometry_msgs/PointStamped eye
    
    # The frame-relative point for the focus (or pivot for an Orbit controller).
    geometry_msgs/PointStamped focus
    
    # The frame-relative vector that maps to "up" in the view plane.
    # The zero-vector will default to +Z in the view controller's "Target Frame".
    geometry_msgs/Vector3Stamped up
    
    # ------------------------------------------------
    # Some paramters for interaction control
    # ------------------------------------------------
    # The interaction style that should be activated when movement is done.
    uint8 mouse_interaction_mode
    uint8 NO_CHANGE = 0 # Leaves the control style unchanged
    uint8 ORBIT = 1 # Activates the Orbit-style controller
    uint8 FPS   = 2 # Activates the FPS-style controller
    
    # A flag to enable or disable user interaction 
    # (defaults to false so that interaction is enabled)
    bool interaction_disabled
    
    # A flag indicating if the camera yaw axis is fixed to +Z of the camera attached_frame
    bool allow_free_yaw_axis
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
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
    const resolved = new CameraPlacement(null);
    if (msg.interpolation_mode !== undefined) {
      resolved.interpolation_mode = msg.interpolation_mode;
    }
    else {
      resolved.interpolation_mode = 0
    }

    if (msg.target_frame !== undefined) {
      resolved.target_frame = msg.target_frame;
    }
    else {
      resolved.target_frame = ''
    }

    if (msg.time_from_start !== undefined) {
      resolved.time_from_start = msg.time_from_start;
    }
    else {
      resolved.time_from_start = {secs: 0, nsecs: 0}
    }

    if (msg.eye !== undefined) {
      resolved.eye = geometry_msgs.msg.PointStamped.Resolve(msg.eye)
    }
    else {
      resolved.eye = new geometry_msgs.msg.PointStamped()
    }

    if (msg.focus !== undefined) {
      resolved.focus = geometry_msgs.msg.PointStamped.Resolve(msg.focus)
    }
    else {
      resolved.focus = new geometry_msgs.msg.PointStamped()
    }

    if (msg.up !== undefined) {
      resolved.up = geometry_msgs.msg.Vector3Stamped.Resolve(msg.up)
    }
    else {
      resolved.up = new geometry_msgs.msg.Vector3Stamped()
    }

    if (msg.mouse_interaction_mode !== undefined) {
      resolved.mouse_interaction_mode = msg.mouse_interaction_mode;
    }
    else {
      resolved.mouse_interaction_mode = 0
    }

    if (msg.interaction_disabled !== undefined) {
      resolved.interaction_disabled = msg.interaction_disabled;
    }
    else {
      resolved.interaction_disabled = false
    }

    if (msg.allow_free_yaw_axis !== undefined) {
      resolved.allow_free_yaw_axis = msg.allow_free_yaw_axis;
    }
    else {
      resolved.allow_free_yaw_axis = false
    }

    return resolved;
    }
};

// Constants for message
CameraPlacement.Constants = {
  LINEAR: 0,
  SPHERICAL: 1,
  NO_CHANGE: 0,
  ORBIT: 1,
  FPS: 2,
}

module.exports = CameraPlacement;
