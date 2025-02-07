# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from campusrover_msgs/State.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class State(genpy.Message):
  _md5sum = "588c81bfe8a0db760845dae98b513221"
  _type = "campusrover_msgs/State"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 STATE_MOVE_TO_ELEVATOR=0
uint8 STATE_TAKE_ELEVATOR=1
uint8 STATE_DILIVER_THIS_FLOOR=2
uint8 STATE_MOVE_TO_ORIGIN=3
uint8 state
string[] rooms	
int8 current_floor
int8 destination_floor
"""
  # Pseudo-constants
  STATE_MOVE_TO_ELEVATOR = 0
  STATE_TAKE_ELEVATOR = 1
  STATE_DILIVER_THIS_FLOOR = 2
  STATE_MOVE_TO_ORIGIN = 3

  __slots__ = ['state','rooms','current_floor','destination_floor']
  _slot_types = ['uint8','string[]','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state,rooms,current_floor,destination_floor

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(State, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = 0
      if self.rooms is None:
        self.rooms = []
      if self.current_floor is None:
        self.current_floor = 0
      if self.destination_floor is None:
        self.destination_floor = 0
    else:
      self.state = 0
      self.rooms = []
      self.current_floor = 0
      self.destination_floor = 0

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
      _x = self.state
      buff.write(_get_struct_B().pack(_x))
      length = len(self.rooms)
      buff.write(_struct_I.pack(length))
      for val1 in self.rooms:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_2b().pack(_x.current_floor, _x.destination_floor))
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
      end = 0
      start = end
      end += 1
      (self.state,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rooms = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.rooms.append(val1)
      _x = self
      start = end
      end += 2
      (_x.current_floor, _x.destination_floor,) = _get_struct_2b().unpack(str[start:end])
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
      _x = self.state
      buff.write(_get_struct_B().pack(_x))
      length = len(self.rooms)
      buff.write(_struct_I.pack(length))
      for val1 in self.rooms:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_2b().pack(_x.current_floor, _x.destination_floor))
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
      end = 0
      start = end
      end += 1
      (self.state,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rooms = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.rooms.append(val1)
      _x = self
      start = end
      end += 2
      (_x.current_floor, _x.destination_floor,) = _get_struct_2b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2b = None
def _get_struct_2b():
    global _struct_2b
    if _struct_2b is None:
        _struct_2b = struct.Struct("<2b")
    return _struct_2b
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
