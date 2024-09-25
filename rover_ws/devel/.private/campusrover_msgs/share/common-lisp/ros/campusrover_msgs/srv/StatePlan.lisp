; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude StatePlan-request.msg.html

(cl:defclass <StatePlan-request> (roslisp-msg-protocol:ros-message)
  ((rooms
    :reader rooms
    :initarg :rooms
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass StatePlan-request (<StatePlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatePlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatePlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<StatePlan-request> is deprecated: use campusrover_msgs-srv:StatePlan-request instead.")))

(cl:ensure-generic-function 'rooms-val :lambda-list '(m))
(cl:defmethod rooms-val ((m <StatePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:rooms-val is deprecated.  Use campusrover_msgs-srv:rooms instead.")
  (rooms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatePlan-request>) ostream)
  "Serializes a message object of type '<StatePlan-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatePlan-request>) istream)
  "Deserializes a message object of type '<StatePlan-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatePlan-request>)))
  "Returns string type for a service object of type '<StatePlan-request>"
  "campusrover_msgs/StatePlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatePlan-request)))
  "Returns string type for a service object of type 'StatePlan-request"
  "campusrover_msgs/StatePlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatePlan-request>)))
  "Returns md5sum for a message object of type '<StatePlan-request>"
  "4132620d7901a9a949aa5ed4dc13055a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatePlan-request)))
  "Returns md5sum for a message object of type 'StatePlan-request"
  "4132620d7901a9a949aa5ed4dc13055a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatePlan-request>)))
  "Returns full string definition for message of type '<StatePlan-request>"
  (cl:format cl:nil "string[] rooms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatePlan-request)))
  "Returns full string definition for message of type 'StatePlan-request"
  (cl:format cl:nil "string[] rooms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatePlan-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rooms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatePlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StatePlan-request
    (cl:cons ':rooms (rooms msg))
))
;//! \htmlinclude StatePlan-response.msg.html

(cl:defclass <StatePlan-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector campusrover_msgs-msg:State)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:State :initial-element (cl:make-instance 'campusrover_msgs-msg:State))))
)

(cl:defclass StatePlan-response (<StatePlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatePlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatePlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<StatePlan-response> is deprecated: use campusrover_msgs-srv:StatePlan-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <StatePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:states-val is deprecated.  Use campusrover_msgs-srv:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatePlan-response>) ostream)
  "Serializes a message object of type '<StatePlan-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatePlan-response>) istream)
  "Deserializes a message object of type '<StatePlan-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:State))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatePlan-response>)))
  "Returns string type for a service object of type '<StatePlan-response>"
  "campusrover_msgs/StatePlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatePlan-response)))
  "Returns string type for a service object of type 'StatePlan-response"
  "campusrover_msgs/StatePlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatePlan-response>)))
  "Returns md5sum for a message object of type '<StatePlan-response>"
  "4132620d7901a9a949aa5ed4dc13055a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatePlan-response)))
  "Returns md5sum for a message object of type 'StatePlan-response"
  "4132620d7901a9a949aa5ed4dc13055a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatePlan-response>)))
  "Returns full string definition for message of type '<StatePlan-response>"
  (cl:format cl:nil "campusrover_msgs/State[] states~%~%~%================================================================================~%MSG: campusrover_msgs/State~%uint8 STATE_MOVE_TO_ELEVATOR=0~%uint8 STATE_TAKE_ELEVATOR=1~%uint8 STATE_DILIVER_THIS_FLOOR=2~%uint8 STATE_MOVE_TO_ORIGIN=3~%uint8 state~%string[] rooms	~%int8 current_floor~%int8 destination_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatePlan-response)))
  "Returns full string definition for message of type 'StatePlan-response"
  (cl:format cl:nil "campusrover_msgs/State[] states~%~%~%================================================================================~%MSG: campusrover_msgs/State~%uint8 STATE_MOVE_TO_ELEVATOR=0~%uint8 STATE_TAKE_ELEVATOR=1~%uint8 STATE_DILIVER_THIS_FLOOR=2~%uint8 STATE_MOVE_TO_ORIGIN=3~%uint8 state~%string[] rooms	~%int8 current_floor~%int8 destination_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatePlan-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatePlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StatePlan-response
    (cl:cons ':states (states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StatePlan)))
  'StatePlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StatePlan)))
  'StatePlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatePlan)))
  "Returns string type for a service object of type '<StatePlan>"
  "campusrover_msgs/StatePlan")