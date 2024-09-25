; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude ModuleInfo-request.msg.html

(cl:defclass <ModuleInfo-request> (roslisp-msg-protocol:ros-message)
  ((building
    :reader building
    :initarg :building
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform ""))
)

(cl:defclass ModuleInfo-request (<ModuleInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ModuleInfo-request> is deprecated: use campusrover_msgs-srv:ModuleInfo-request instead.")))

(cl:ensure-generic-function 'building-val :lambda-list '(m))
(cl:defmethod building-val ((m <ModuleInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:building-val is deprecated.  Use campusrover_msgs-srv:building instead.")
  (building m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <ModuleInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:floor-val is deprecated.  Use campusrover_msgs-srv:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleInfo-request>) ostream)
  "Serializes a message object of type '<ModuleInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleInfo-request>) istream)
  "Deserializes a message object of type '<ModuleInfo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleInfo-request>)))
  "Returns string type for a service object of type '<ModuleInfo-request>"
  "campusrover_msgs/ModuleInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleInfo-request)))
  "Returns string type for a service object of type 'ModuleInfo-request"
  "campusrover_msgs/ModuleInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleInfo-request>)))
  "Returns md5sum for a message object of type '<ModuleInfo-request>"
  "55d2c427bdf7bbce8ecb662848fd46e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleInfo-request)))
  "Returns md5sum for a message object of type 'ModuleInfo-request"
  "55d2c427bdf7bbce8ecb662848fd46e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleInfo-request>)))
  "Returns full string definition for message of type '<ModuleInfo-request>"
  (cl:format cl:nil "string building~%string floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleInfo-request)))
  "Returns full string definition for message of type 'ModuleInfo-request"
  (cl:format cl:nil "string building~%string floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building))
     4 (cl:length (cl:slot-value msg 'floor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleInfo-request
    (cl:cons ':building (building msg))
    (cl:cons ':floor (floor msg))
))
;//! \htmlinclude ModuleInfo-response.msg.html

(cl:defclass <ModuleInfo-response> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (node
    :reader node
    :initarg :node
    :type (cl:vector campusrover_msgs-msg:NodeInfo)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:NodeInfo :initial-element (cl:make-instance 'campusrover_msgs-msg:NodeInfo)))
   (connections
    :reader connections
    :initarg :connections
    :type (cl:vector campusrover_msgs-msg:RoomConnected)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:RoomConnected :initial-element (cl:make-instance 'campusrover_msgs-msg:RoomConnected))))
)

(cl:defclass ModuleInfo-response (<ModuleInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<ModuleInfo-response> is deprecated: use campusrover_msgs-srv:ModuleInfo-response instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <ModuleInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:frame_id-val is deprecated.  Use campusrover_msgs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <ModuleInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:node-val is deprecated.  Use campusrover_msgs-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'connections-val :lambda-list '(m))
(cl:defmethod connections-val ((m <ModuleInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:connections-val is deprecated.  Use campusrover_msgs-srv:connections instead.")
  (connections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleInfo-response>) ostream)
  "Serializes a message object of type '<ModuleInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleInfo-response>) istream)
  "Deserializes a message object of type '<ModuleInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:NodeInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:RoomConnected))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleInfo-response>)))
  "Returns string type for a service object of type '<ModuleInfo-response>"
  "campusrover_msgs/ModuleInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleInfo-response)))
  "Returns string type for a service object of type 'ModuleInfo-response"
  "campusrover_msgs/ModuleInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleInfo-response>)))
  "Returns md5sum for a message object of type '<ModuleInfo-response>"
  "55d2c427bdf7bbce8ecb662848fd46e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleInfo-response)))
  "Returns md5sum for a message object of type 'ModuleInfo-response"
  "55d2c427bdf7bbce8ecb662848fd46e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleInfo-response>)))
  "Returns full string definition for message of type '<ModuleInfo-response>"
  (cl:format cl:nil "string frame_id~%campusrover_msgs/NodeInfo[] node~%campusrover_msgs/RoomConnected[] connections~%~%================================================================================~%MSG: campusrover_msgs/NodeInfo~%string name~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: campusrover_msgs/RoomConnected~%string[] connection~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleInfo-response)))
  "Returns full string definition for message of type 'ModuleInfo-response"
  (cl:format cl:nil "string frame_id~%campusrover_msgs/NodeInfo[] node~%campusrover_msgs/RoomConnected[] connections~%~%================================================================================~%MSG: campusrover_msgs/NodeInfo~%string name~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: campusrover_msgs/RoomConnected~%string[] connection~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleInfo-response
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':node (node msg))
    (cl:cons ':connections (connections msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModuleInfo)))
  'ModuleInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModuleInfo)))
  'ModuleInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleInfo)))
  "Returns string type for a service object of type '<ModuleInfo>"
  "campusrover_msgs/ModuleInfo")