; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (rooms
    :reader rooms
    :initarg :rooms
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (current_floor
    :reader current_floor
    :initarg :current_floor
    :type cl:fixnum
    :initform 0)
   (destination_floor
    :reader destination_floor
    :initarg :destination_floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<State> is deprecated: use campusrover_msgs-msg:State instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:state-val is deprecated.  Use campusrover_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'rooms-val :lambda-list '(m))
(cl:defmethod rooms-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:rooms-val is deprecated.  Use campusrover_msgs-msg:rooms instead.")
  (rooms m))

(cl:ensure-generic-function 'current_floor-val :lambda-list '(m))
(cl:defmethod current_floor-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:current_floor-val is deprecated.  Use campusrover_msgs-msg:current_floor instead.")
  (current_floor m))

(cl:ensure-generic-function 'destination_floor-val :lambda-list '(m))
(cl:defmethod destination_floor-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:destination_floor-val is deprecated.  Use campusrover_msgs-msg:destination_floor instead.")
  (destination_floor m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<State>)))
    "Constants for message type '<State>"
  '((:STATE_MOVE_TO_ELEVATOR . 0)
    (:STATE_TAKE_ELEVATOR . 1)
    (:STATE_DILIVER_THIS_FLOOR . 2)
    (:STATE_MOVE_TO_ORIGIN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'State)))
    "Constants for message type 'State"
  '((:STATE_MOVE_TO_ELEVATOR . 0)
    (:STATE_TAKE_ELEVATOR . 1)
    (:STATE_DILIVER_THIS_FLOOR . 2)
    (:STATE_MOVE_TO_ORIGIN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rooms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'rooms))
  (cl:let* ((signed (cl:slot-value msg 'current_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'destination_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rooms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rooms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "campusrover_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "campusrover_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "588c81bfe8a0db760845dae98b513221")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "588c81bfe8a0db760845dae98b513221")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "uint8 STATE_MOVE_TO_ELEVATOR=0~%uint8 STATE_TAKE_ELEVATOR=1~%uint8 STATE_DILIVER_THIS_FLOOR=2~%uint8 STATE_MOVE_TO_ORIGIN=3~%uint8 state~%string[] rooms	~%int8 current_floor~%int8 destination_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "uint8 STATE_MOVE_TO_ELEVATOR=0~%uint8 STATE_TAKE_ELEVATOR=1~%uint8 STATE_DILIVER_THIS_FLOOR=2~%uint8 STATE_MOVE_TO_ORIGIN=3~%uint8 state~%string[] rooms	~%int8 current_floor~%int8 destination_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rooms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':state (state msg))
    (cl:cons ':rooms (rooms msg))
    (cl:cons ':current_floor (current_floor msg))
    (cl:cons ':destination_floor (destination_floor msg))
))
