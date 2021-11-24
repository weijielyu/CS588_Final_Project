# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from jsk_recognition_msgs/SparseOccupancyGrid.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import jsk_recognition_msgs.msg
import std_msgs.msg

class SparseOccupancyGrid(genpy.Message):
  _md5sum = "497269ddab6058d0d4860f25dc49448f"
  _type = "jsk_recognition_msgs/SparseOccupancyGrid"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
geometry_msgs/Pose origin_pose
float32 resolution

SparseOccupancyGridColumn[] columns

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: jsk_recognition_msgs/SparseOccupancyGridColumn
int32 column_index
SparseOccupancyGridCell[] cells

================================================================================
MSG: jsk_recognition_msgs/SparseOccupancyGridCell
int32 row_index
float32 value
"""
  __slots__ = ['header','origin_pose','resolution','columns']
  _slot_types = ['std_msgs/Header','geometry_msgs/Pose','float32','jsk_recognition_msgs/SparseOccupancyGridColumn[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,origin_pose,resolution,columns

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SparseOccupancyGrid, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.origin_pose is None:
        self.origin_pose = geometry_msgs.msg.Pose()
      if self.resolution is None:
        self.resolution = 0.
      if self.columns is None:
        self.columns = []
    else:
      self.header = std_msgs.msg.Header()
      self.origin_pose = geometry_msgs.msg.Pose()
      self.resolution = 0.
      self.columns = []

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7df().pack(_x.origin_pose.position.x, _x.origin_pose.position.y, _x.origin_pose.position.z, _x.origin_pose.orientation.x, _x.origin_pose.orientation.y, _x.origin_pose.orientation.z, _x.origin_pose.orientation.w, _x.resolution))
      length = len(self.columns)
      buff.write(_struct_I.pack(length))
      for val1 in self.columns:
        _x = val1.column_index
        buff.write(_get_struct_i().pack(_x))
        length = len(val1.cells)
        buff.write(_struct_I.pack(length))
        for val2 in val1.cells:
          _x = val2
          buff.write(_get_struct_if().pack(_x.row_index, _x.value))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.origin_pose is None:
        self.origin_pose = geometry_msgs.msg.Pose()
      if self.columns is None:
        self.columns = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.origin_pose.position.x, _x.origin_pose.position.y, _x.origin_pose.position.z, _x.origin_pose.orientation.x, _x.origin_pose.orientation.y, _x.origin_pose.orientation.z, _x.origin_pose.orientation.w, _x.resolution,) = _get_struct_7df().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.columns = []
      for i in range(0, length):
        val1 = jsk_recognition_msgs.msg.SparseOccupancyGridColumn()
        start = end
        end += 4
        (val1.column_index,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.cells = []
        for i in range(0, length):
          val2 = jsk_recognition_msgs.msg.SparseOccupancyGridCell()
          _x = val2
          start = end
          end += 8
          (_x.row_index, _x.value,) = _get_struct_if().unpack(str[start:end])
          val1.cells.append(val2)
        self.columns.append(val1)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7df().pack(_x.origin_pose.position.x, _x.origin_pose.position.y, _x.origin_pose.position.z, _x.origin_pose.orientation.x, _x.origin_pose.orientation.y, _x.origin_pose.orientation.z, _x.origin_pose.orientation.w, _x.resolution))
      length = len(self.columns)
      buff.write(_struct_I.pack(length))
      for val1 in self.columns:
        _x = val1.column_index
        buff.write(_get_struct_i().pack(_x))
        length = len(val1.cells)
        buff.write(_struct_I.pack(length))
        for val2 in val1.cells:
          _x = val2
          buff.write(_get_struct_if().pack(_x.row_index, _x.value))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.origin_pose is None:
        self.origin_pose = geometry_msgs.msg.Pose()
      if self.columns is None:
        self.columns = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.origin_pose.position.x, _x.origin_pose.position.y, _x.origin_pose.position.z, _x.origin_pose.orientation.x, _x.origin_pose.orientation.y, _x.origin_pose.orientation.z, _x.origin_pose.orientation.w, _x.resolution,) = _get_struct_7df().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.columns = []
      for i in range(0, length):
        val1 = jsk_recognition_msgs.msg.SparseOccupancyGridColumn()
        start = end
        end += 4
        (val1.column_index,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.cells = []
        for i in range(0, length):
          val2 = jsk_recognition_msgs.msg.SparseOccupancyGridCell()
          _x = val2
          start = end
          end += 8
          (_x.row_index, _x.value,) = _get_struct_if().unpack(str[start:end])
          val1.cells.append(val2)
        self.columns.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7df = None
def _get_struct_7df():
    global _struct_7df
    if _struct_7df is None:
        _struct_7df = struct.Struct("<7df")
    return _struct_7df
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_if = None
def _get_struct_if():
    global _struct_if
    if _struct_if is None:
        _struct_if = struct.Struct("<if")
    return _struct_if
