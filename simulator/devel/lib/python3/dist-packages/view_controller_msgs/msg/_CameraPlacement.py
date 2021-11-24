# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from view_controller_msgs/CameraPlacement.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import std_msgs.msg

class CameraPlacement(genpy.Message):
  _md5sum = "38be6efe15caa86e2c835dd05ab88393"
  _type = "view_controller_msgs/CameraPlacement"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The interpolation mode to use during this step
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
float64 z"""
  # Pseudo-constants
  LINEAR = 0
  SPHERICAL = 1
  NO_CHANGE = 0
  ORBIT = 1
  FPS = 2

  __slots__ = ['interpolation_mode','target_frame','time_from_start','eye','focus','up','mouse_interaction_mode','interaction_disabled','allow_free_yaw_axis']
  _slot_types = ['uint8','string','duration','geometry_msgs/PointStamped','geometry_msgs/PointStamped','geometry_msgs/Vector3Stamped','uint8','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       interpolation_mode,target_frame,time_from_start,eye,focus,up,mouse_interaction_mode,interaction_disabled,allow_free_yaw_axis

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CameraPlacement, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.interpolation_mode is None:
        self.interpolation_mode = 0
      if self.target_frame is None:
        self.target_frame = ''
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.eye is None:
        self.eye = geometry_msgs.msg.PointStamped()
      if self.focus is None:
        self.focus = geometry_msgs.msg.PointStamped()
      if self.up is None:
        self.up = geometry_msgs.msg.Vector3Stamped()
      if self.mouse_interaction_mode is None:
        self.mouse_interaction_mode = 0
      if self.interaction_disabled is None:
        self.interaction_disabled = False
      if self.allow_free_yaw_axis is None:
        self.allow_free_yaw_axis = False
    else:
      self.interpolation_mode = 0
      self.target_frame = ''
      self.time_from_start = genpy.Duration()
      self.eye = geometry_msgs.msg.PointStamped()
      self.focus = geometry_msgs.msg.PointStamped()
      self.up = geometry_msgs.msg.Vector3Stamped()
      self.mouse_interaction_mode = 0
      self.interaction_disabled = False
      self.allow_free_yaw_axis = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.interpolation_mode
      buff.write(_get_struct_B().pack(_x))
      _x = self.target_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i3I().pack(_x.time_from_start.secs, _x.time_from_start.nsecs, _x.eye.header.seq, _x.eye.header.stamp.secs, _x.eye.header.stamp.nsecs))
      _x = self.eye.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.eye.point.x, _x.eye.point.y, _x.eye.point.z, _x.focus.header.seq, _x.focus.header.stamp.secs, _x.focus.header.stamp.nsecs))
      _x = self.focus.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.focus.point.x, _x.focus.point.y, _x.focus.point.z, _x.up.header.seq, _x.up.header.stamp.secs, _x.up.header.stamp.nsecs))
      _x = self.up.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3B().pack(_x.up.vector.x, _x.up.vector.y, _x.up.vector.z, _x.mouse_interaction_mode, _x.interaction_disabled, _x.allow_free_yaw_axis))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.eye is None:
        self.eye = geometry_msgs.msg.PointStamped()
      if self.focus is None:
        self.focus = geometry_msgs.msg.PointStamped()
      if self.up is None:
        self.up = geometry_msgs.msg.Vector3Stamped()
      end = 0
      start = end
      end += 1
      (self.interpolation_mode,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target_frame = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.time_from_start.secs, _x.time_from_start.nsecs, _x.eye.header.seq, _x.eye.header.stamp.secs, _x.eye.header.stamp.nsecs,) = _get_struct_2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eye.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eye.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.eye.point.x, _x.eye.point.y, _x.eye.point.z, _x.focus.header.seq, _x.focus.header.stamp.secs, _x.focus.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.focus.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.focus.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.focus.point.x, _x.focus.point.y, _x.focus.point.z, _x.up.header.seq, _x.up.header.stamp.secs, _x.up.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.up.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.up.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.up.vector.x, _x.up.vector.y, _x.up.vector.z, _x.mouse_interaction_mode, _x.interaction_disabled, _x.allow_free_yaw_axis,) = _get_struct_3d3B().unpack(str[start:end])
      self.interaction_disabled = bool(self.interaction_disabled)
      self.allow_free_yaw_axis = bool(self.allow_free_yaw_axis)
      self.time_from_start.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.interpolation_mode
      buff.write(_get_struct_B().pack(_x))
      _x = self.target_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i3I().pack(_x.time_from_start.secs, _x.time_from_start.nsecs, _x.eye.header.seq, _x.eye.header.stamp.secs, _x.eye.header.stamp.nsecs))
      _x = self.eye.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.eye.point.x, _x.eye.point.y, _x.eye.point.z, _x.focus.header.seq, _x.focus.header.stamp.secs, _x.focus.header.stamp.nsecs))
      _x = self.focus.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.focus.point.x, _x.focus.point.y, _x.focus.point.z, _x.up.header.seq, _x.up.header.stamp.secs, _x.up.header.stamp.nsecs))
      _x = self.up.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3B().pack(_x.up.vector.x, _x.up.vector.y, _x.up.vector.z, _x.mouse_interaction_mode, _x.interaction_disabled, _x.allow_free_yaw_axis))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.eye is None:
        self.eye = geometry_msgs.msg.PointStamped()
      if self.focus is None:
        self.focus = geometry_msgs.msg.PointStamped()
      if self.up is None:
        self.up = geometry_msgs.msg.Vector3Stamped()
      end = 0
      start = end
      end += 1
      (self.interpolation_mode,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target_frame = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.time_from_start.secs, _x.time_from_start.nsecs, _x.eye.header.seq, _x.eye.header.stamp.secs, _x.eye.header.stamp.nsecs,) = _get_struct_2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eye.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eye.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.eye.point.x, _x.eye.point.y, _x.eye.point.z, _x.focus.header.seq, _x.focus.header.stamp.secs, _x.focus.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.focus.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.focus.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.focus.point.x, _x.focus.point.y, _x.focus.point.z, _x.up.header.seq, _x.up.header.stamp.secs, _x.up.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.up.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.up.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 27
      (_x.up.vector.x, _x.up.vector.y, _x.up.vector.z, _x.mouse_interaction_mode, _x.interaction_disabled, _x.allow_free_yaw_axis,) = _get_struct_3d3B().unpack(str[start:end])
      self.interaction_disabled = bool(self.interaction_disabled)
      self.allow_free_yaw_axis = bool(self.allow_free_yaw_axis)
      self.time_from_start.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i3I = None
def _get_struct_2i3I():
    global _struct_2i3I
    if _struct_2i3I is None:
        _struct_2i3I = struct.Struct("<2i3I")
    return _struct_2i3I
_struct_3d3B = None
def _get_struct_3d3B():
    global _struct_3d3B
    if _struct_3d3B is None:
        _struct_3d3B = struct.Struct("<3d3B")
    return _struct_3d3B
_struct_3d3I = None
def _get_struct_3d3I():
    global _struct_3d3I
    if _struct_3d3I is None:
        _struct_3d3I = struct.Struct("<3d3I")
    return _struct_3d3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
