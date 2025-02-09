# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from campusrover_msgs/CANbus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CANbus(genpy.Message):
  _md5sum = "2a6881bd895ce03d25c554a5c460b8df"
  _type = "campusrover_msgs/CANbus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 id
uint16 id_container1 = 1
uint16 id_container2 = 2
uint16 id_container3 = 3
uint16 id_container4 = 4
uint16 id_twoside = 5

uint16 group
uint16 group_zero = 0
uint16 group_container = 1

uint16 fun_code
uint16 sending_single = 26 #0x1A
uint16 sending_group = 138 #0x8A

uint16 reg1
uint16 value1
uint16 reg2
uint16 value2

uint16 reg_container = 2
uint16 value_opendoor = 1
uint16 value_closedoor = 0

uint16 reg_containerled = 3
uint16 reg_leftsideled = 4
uint16 reg_rightsideled = 5
uint16 reg_twosideled = 6
uint16 value_dark = 0
uint16 value_light_50 = 1
uint16 value_light_100 = 2
uint16 value_breathe = 3
uint16 value_blink = 4

uint16 value_water1 = 5
uint16 value_water2 = 6
uint16 value_water3 = 7
uint16 value_water4 = 8
uint16 value_talking = 9

uint16 value_nocolor = 0
uint16 value_white = 1
uint16 value_red = 2
uint16 value_green = 3
uint16 value_blue = 4
uint16 value_purple = 5
uint16 value_yellow = 6
uint16 value_sky = 7
"""
  # Pseudo-constants
  id_container1 = 1
  id_container2 = 2
  id_container3 = 3
  id_container4 = 4
  id_twoside = 5
  group_zero = 0
  group_container = 1
  sending_single = 26
  sending_group = 138
  reg_container = 2
  value_opendoor = 1
  value_closedoor = 0
  reg_containerled = 3
  reg_leftsideled = 4
  reg_rightsideled = 5
  reg_twosideled = 6
  value_dark = 0
  value_light_50 = 1
  value_light_100 = 2
  value_breathe = 3
  value_blink = 4
  value_water1 = 5
  value_water2 = 6
  value_water3 = 7
  value_water4 = 8
  value_talking = 9
  value_nocolor = 0
  value_white = 1
  value_red = 2
  value_green = 3
  value_blue = 4
  value_purple = 5
  value_yellow = 6
  value_sky = 7

  __slots__ = ['id','group','fun_code','reg1','value1','reg2','value2']
  _slot_types = ['uint16','uint16','uint16','uint16','uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,group,fun_code,reg1,value1,reg2,value2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CANbus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.group is None:
        self.group = 0
      if self.fun_code is None:
        self.fun_code = 0
      if self.reg1 is None:
        self.reg1 = 0
      if self.value1 is None:
        self.value1 = 0
      if self.reg2 is None:
        self.reg2 = 0
      if self.value2 is None:
        self.value2 = 0
    else:
      self.id = 0
      self.group = 0
      self.fun_code = 0
      self.reg1 = 0
      self.value1 = 0
      self.reg2 = 0
      self.value2 = 0

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
      buff.write(_get_struct_7H().pack(_x.id, _x.group, _x.fun_code, _x.reg1, _x.value1, _x.reg2, _x.value2))
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
      _x = self
      start = end
      end += 14
      (_x.id, _x.group, _x.fun_code, _x.reg1, _x.value1, _x.reg2, _x.value2,) = _get_struct_7H().unpack(str[start:end])
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
      buff.write(_get_struct_7H().pack(_x.id, _x.group, _x.fun_code, _x.reg1, _x.value1, _x.reg2, _x.value2))
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
      _x = self
      start = end
      end += 14
      (_x.id, _x.group, _x.fun_code, _x.reg1, _x.value1, _x.reg2, _x.value2,) = _get_struct_7H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7H = None
def _get_struct_7H():
    global _struct_7H
    if _struct_7H is None:
        _struct_7H = struct.Struct("<7H")
    return _struct_7H
