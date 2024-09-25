; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ChargerStatus.msg.html

(cl:defclass <ChargerStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChargerStatus (<ChargerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ChargerStatus> is deprecated: use campusrover_msgs-msg:ChargerStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ChargerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:status-val is deprecated.  Use campusrover_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ChargerStatus>)))
    "Constants for message type '<ChargerStatus>"
  '((:UNKNOEN . 0)
    (:CONNECTED . 1)
    (:UNCONNECTED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ChargerStatus)))
    "Constants for message type 'ChargerStatus"
  '((:UNKNOEN . 0)
    (:CONNECTED . 1)
    (:UNCONNECTED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargerStatus>) ostream)
  "Serializes a message object of type '<ChargerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargerStatus>) istream)
  "Deserializes a message object of type '<ChargerStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargerStatus>)))
  "Returns string type for a message object of type '<ChargerStatus>"
  "campusrover_msgs/ChargerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargerStatus)))
  "Returns string type for a message object of type 'ChargerStatus"
  "campusrover_msgs/ChargerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargerStatus>)))
  "Returns md5sum for a message object of type '<ChargerStatus>"
  "11eb00a286eb748ac3d666ae0507cfc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargerStatus)))
  "Returns md5sum for a message object of type 'ChargerStatus"
  "11eb00a286eb748ac3d666ae0507cfc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargerStatus>)))
  "Returns full string definition for message of type '<ChargerStatus>"
  (cl:format cl:nil "uint8 UNKNOEN = 0~%uint8 CONNECTED = 1~%uint8 UNCONNECTED = 2~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargerStatus)))
  "Returns full string definition for message of type 'ChargerStatus"
  (cl:format cl:nil "uint8 UNKNOEN = 0~%uint8 CONNECTED = 1~%uint8 UNCONNECTED = 2~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargerStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargerStatus
    (cl:cons ':status (status msg))
))
