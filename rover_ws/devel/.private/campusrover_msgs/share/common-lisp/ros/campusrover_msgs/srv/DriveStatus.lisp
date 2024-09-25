; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-srv)


;//! \htmlinclude DriveStatus-request.msg.html

(cl:defclass <DriveStatus-request> (roslisp-msg-protocol:ros-message)
  ((drive_status
    :reader drive_status
    :initarg :drive_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DriveStatus-request (<DriveStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<DriveStatus-request> is deprecated: use campusrover_msgs-srv:DriveStatus-request instead.")))

(cl:ensure-generic-function 'drive_status-val :lambda-list '(m))
(cl:defmethod drive_status-val ((m <DriveStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-srv:drive_status-val is deprecated.  Use campusrover_msgs-srv:drive_status instead.")
  (drive_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriveStatus-request>)))
    "Constants for message type '<DriveStatus-request>"
  '((:DRIVE_STATUS_STOP . 0)
    (:DRIVE_STATUS_RELEASE . 1)
    (:DRIVE_STATUS_CMD_CONTROL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriveStatus-request)))
    "Constants for message type 'DriveStatus-request"
  '((:DRIVE_STATUS_STOP . 0)
    (:DRIVE_STATUS_RELEASE . 1)
    (:DRIVE_STATUS_CMD_CONTROL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveStatus-request>) ostream)
  "Serializes a message object of type '<DriveStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveStatus-request>) istream)
  "Deserializes a message object of type '<DriveStatus-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveStatus-request>)))
  "Returns string type for a service object of type '<DriveStatus-request>"
  "campusrover_msgs/DriveStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveStatus-request)))
  "Returns string type for a service object of type 'DriveStatus-request"
  "campusrover_msgs/DriveStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveStatus-request>)))
  "Returns md5sum for a message object of type '<DriveStatus-request>"
  "4a11cbf62ada3e909e0d717d712b0562")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveStatus-request)))
  "Returns md5sum for a message object of type 'DriveStatus-request"
  "4a11cbf62ada3e909e0d717d712b0562")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveStatus-request>)))
  "Returns full string definition for message of type '<DriveStatus-request>"
  (cl:format cl:nil "uint8 DRIVE_STATUS_STOP = 0~%uint8 DRIVE_STATUS_RELEASE = 1~%uint8 DRIVE_STATUS_CMD_CONTROL = 2~%uint8 drive_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveStatus-request)))
  "Returns full string definition for message of type 'DriveStatus-request"
  (cl:format cl:nil "uint8 DRIVE_STATUS_STOP = 0~%uint8 DRIVE_STATUS_RELEASE = 1~%uint8 DRIVE_STATUS_CMD_CONTROL = 2~%uint8 drive_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveStatus-request
    (cl:cons ':drive_status (drive_status msg))
))
;//! \htmlinclude DriveStatus-response.msg.html

(cl:defclass <DriveStatus-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DriveStatus-response (<DriveStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-srv:<DriveStatus-response> is deprecated: use campusrover_msgs-srv:DriveStatus-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveStatus-response>) ostream)
  "Serializes a message object of type '<DriveStatus-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveStatus-response>) istream)
  "Deserializes a message object of type '<DriveStatus-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveStatus-response>)))
  "Returns string type for a service object of type '<DriveStatus-response>"
  "campusrover_msgs/DriveStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveStatus-response)))
  "Returns string type for a service object of type 'DriveStatus-response"
  "campusrover_msgs/DriveStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveStatus-response>)))
  "Returns md5sum for a message object of type '<DriveStatus-response>"
  "4a11cbf62ada3e909e0d717d712b0562")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveStatus-response)))
  "Returns md5sum for a message object of type 'DriveStatus-response"
  "4a11cbf62ada3e909e0d717d712b0562")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveStatus-response>)))
  "Returns full string definition for message of type '<DriveStatus-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveStatus-response)))
  "Returns full string definition for message of type 'DriveStatus-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveStatus-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveStatus-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveStatus)))
  'DriveStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveStatus)))
  'DriveStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveStatus)))
  "Returns string type for a service object of type '<DriveStatus>"
  "campusrover_msgs/DriveStatus")