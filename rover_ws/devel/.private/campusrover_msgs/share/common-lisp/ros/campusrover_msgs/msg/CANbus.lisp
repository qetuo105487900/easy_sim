; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude CANbus.msg.html

(cl:defclass <CANbus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (group
    :reader group
    :initarg :group
    :type cl:fixnum
    :initform 0)
   (fun_code
    :reader fun_code
    :initarg :fun_code
    :type cl:fixnum
    :initform 0)
   (reg1
    :reader reg1
    :initarg :reg1
    :type cl:fixnum
    :initform 0)
   (value1
    :reader value1
    :initarg :value1
    :type cl:fixnum
    :initform 0)
   (reg2
    :reader reg2
    :initarg :reg2
    :type cl:fixnum
    :initform 0)
   (value2
    :reader value2
    :initarg :value2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CANbus (<CANbus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CANbus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CANbus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<CANbus> is deprecated: use campusrover_msgs-msg:CANbus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:id-val is deprecated.  Use campusrover_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:group-val is deprecated.  Use campusrover_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'fun_code-val :lambda-list '(m))
(cl:defmethod fun_code-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:fun_code-val is deprecated.  Use campusrover_msgs-msg:fun_code instead.")
  (fun_code m))

(cl:ensure-generic-function 'reg1-val :lambda-list '(m))
(cl:defmethod reg1-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:reg1-val is deprecated.  Use campusrover_msgs-msg:reg1 instead.")
  (reg1 m))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:value1-val is deprecated.  Use campusrover_msgs-msg:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'reg2-val :lambda-list '(m))
(cl:defmethod reg2-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:reg2-val is deprecated.  Use campusrover_msgs-msg:reg2 instead.")
  (reg2 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <CANbus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:value2-val is deprecated.  Use campusrover_msgs-msg:value2 instead.")
  (value2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CANbus>)))
    "Constants for message type '<CANbus>"
  '((:ID_CONTAINER1 . 1)
    (:ID_CONTAINER2 . 2)
    (:ID_CONTAINER3 . 3)
    (:ID_CONTAINER4 . 4)
    (:ID_TWOSIDE . 5)
    (:GROUP_ZERO . 0)
    (:GROUP_CONTAINER . 1)
    (:SENDING_SINGLE . 26)
    (:SENDING_GROUP . 138)
    (:REG_CONTAINER . 2)
    (:VALUE_OPENDOOR . 1)
    (:VALUE_CLOSEDOOR . 0)
    (:REG_CONTAINERLED . 3)
    (:REG_LEFTSIDELED . 4)
    (:REG_RIGHTSIDELED . 5)
    (:REG_TWOSIDELED . 6)
    (:VALUE_DARK . 0)
    (:VALUE_LIGHT_50 . 1)
    (:VALUE_LIGHT_100 . 2)
    (:VALUE_BREATHE . 3)
    (:VALUE_BLINK . 4)
    (:VALUE_WATER1 . 5)
    (:VALUE_WATER2 . 6)
    (:VALUE_WATER3 . 7)
    (:VALUE_WATER4 . 8)
    (:VALUE_TALKING . 9)
    (:VALUE_NOCOLOR . 0)
    (:VALUE_WHITE . 1)
    (:VALUE_RED . 2)
    (:VALUE_GREEN . 3)
    (:VALUE_BLUE . 4)
    (:VALUE_PURPLE . 5)
    (:VALUE_YELLOW . 6)
    (:VALUE_SKY . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CANbus)))
    "Constants for message type 'CANbus"
  '((:ID_CONTAINER1 . 1)
    (:ID_CONTAINER2 . 2)
    (:ID_CONTAINER3 . 3)
    (:ID_CONTAINER4 . 4)
    (:ID_TWOSIDE . 5)
    (:GROUP_ZERO . 0)
    (:GROUP_CONTAINER . 1)
    (:SENDING_SINGLE . 26)
    (:SENDING_GROUP . 138)
    (:REG_CONTAINER . 2)
    (:VALUE_OPENDOOR . 1)
    (:VALUE_CLOSEDOOR . 0)
    (:REG_CONTAINERLED . 3)
    (:REG_LEFTSIDELED . 4)
    (:REG_RIGHTSIDELED . 5)
    (:REG_TWOSIDELED . 6)
    (:VALUE_DARK . 0)
    (:VALUE_LIGHT_50 . 1)
    (:VALUE_LIGHT_100 . 2)
    (:VALUE_BREATHE . 3)
    (:VALUE_BLINK . 4)
    (:VALUE_WATER1 . 5)
    (:VALUE_WATER2 . 6)
    (:VALUE_WATER3 . 7)
    (:VALUE_WATER4 . 8)
    (:VALUE_TALKING . 9)
    (:VALUE_NOCOLOR . 0)
    (:VALUE_WHITE . 1)
    (:VALUE_RED . 2)
    (:VALUE_GREEN . 3)
    (:VALUE_BLUE . 4)
    (:VALUE_PURPLE . 5)
    (:VALUE_YELLOW . 6)
    (:VALUE_SKY . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CANbus>) ostream)
  "Serializes a message object of type '<CANbus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fun_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fun_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reg1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reg1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reg2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reg2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CANbus>) istream)
  "Deserializes a message object of type '<CANbus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fun_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fun_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reg1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reg1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reg2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reg2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CANbus>)))
  "Returns string type for a message object of type '<CANbus>"
  "campusrover_msgs/CANbus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CANbus)))
  "Returns string type for a message object of type 'CANbus"
  "campusrover_msgs/CANbus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CANbus>)))
  "Returns md5sum for a message object of type '<CANbus>"
  "2a6881bd895ce03d25c554a5c460b8df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CANbus)))
  "Returns md5sum for a message object of type 'CANbus"
  "2a6881bd895ce03d25c554a5c460b8df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CANbus>)))
  "Returns full string definition for message of type '<CANbus>"
  (cl:format cl:nil "uint16 id~%uint16 id_container1 = 1~%uint16 id_container2 = 2~%uint16 id_container3 = 3~%uint16 id_container4 = 4~%uint16 id_twoside = 5~%~%uint16 group~%uint16 group_zero = 0~%uint16 group_container = 1~%~%uint16 fun_code~%uint16 sending_single = 26 #0x1A~%uint16 sending_group = 138 #0x8A~%~%uint16 reg1~%uint16 value1~%uint16 reg2~%uint16 value2~%~%uint16 reg_container = 2~%uint16 value_opendoor = 1~%uint16 value_closedoor = 0~%~%uint16 reg_containerled = 3~%uint16 reg_leftsideled = 4~%uint16 reg_rightsideled = 5~%uint16 reg_twosideled = 6~%uint16 value_dark = 0~%uint16 value_light_50 = 1~%uint16 value_light_100 = 2~%uint16 value_breathe = 3~%uint16 value_blink = 4~%~%uint16 value_water1 = 5~%uint16 value_water2 = 6~%uint16 value_water3 = 7~%uint16 value_water4 = 8~%uint16 value_talking = 9~%~%uint16 value_nocolor = 0~%uint16 value_white = 1~%uint16 value_red = 2~%uint16 value_green = 3~%uint16 value_blue = 4~%uint16 value_purple = 5~%uint16 value_yellow = 6~%uint16 value_sky = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CANbus)))
  "Returns full string definition for message of type 'CANbus"
  (cl:format cl:nil "uint16 id~%uint16 id_container1 = 1~%uint16 id_container2 = 2~%uint16 id_container3 = 3~%uint16 id_container4 = 4~%uint16 id_twoside = 5~%~%uint16 group~%uint16 group_zero = 0~%uint16 group_container = 1~%~%uint16 fun_code~%uint16 sending_single = 26 #0x1A~%uint16 sending_group = 138 #0x8A~%~%uint16 reg1~%uint16 value1~%uint16 reg2~%uint16 value2~%~%uint16 reg_container = 2~%uint16 value_opendoor = 1~%uint16 value_closedoor = 0~%~%uint16 reg_containerled = 3~%uint16 reg_leftsideled = 4~%uint16 reg_rightsideled = 5~%uint16 reg_twosideled = 6~%uint16 value_dark = 0~%uint16 value_light_50 = 1~%uint16 value_light_100 = 2~%uint16 value_breathe = 3~%uint16 value_blink = 4~%~%uint16 value_water1 = 5~%uint16 value_water2 = 6~%uint16 value_water3 = 7~%uint16 value_water4 = 8~%uint16 value_talking = 9~%~%uint16 value_nocolor = 0~%uint16 value_white = 1~%uint16 value_red = 2~%uint16 value_green = 3~%uint16 value_blue = 4~%uint16 value_purple = 5~%uint16 value_yellow = 6~%uint16 value_sky = 7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CANbus>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CANbus>))
  "Converts a ROS message object to a list"
  (cl:list 'CANbus
    (cl:cons ':id (id msg))
    (cl:cons ':group (group msg))
    (cl:cons ':fun_code (fun_code msg))
    (cl:cons ':reg1 (reg1 msg))
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':reg2 (reg2 msg))
    (cl:cons ':value2 (value2 msg))
))
