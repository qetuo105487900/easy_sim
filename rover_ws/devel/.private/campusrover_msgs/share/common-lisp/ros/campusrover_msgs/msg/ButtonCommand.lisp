; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ButtonCommand.msg.html

(cl:defclass <ButtonCommand> (roslisp-msg-protocol:ros-message)
  ((button_name
    :reader button_name
    :initarg :button_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (command_type
    :reader command_type
    :initarg :command_type
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ButtonCommand (<ButtonCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ButtonCommand> is deprecated: use campusrover_msgs-msg:ButtonCommand instead.")))

(cl:ensure-generic-function 'button_name-val :lambda-list '(m))
(cl:defmethod button_name-val ((m <ButtonCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:button_name-val is deprecated.  Use campusrover_msgs-msg:button_name instead.")
  (button_name m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <ButtonCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:command_type-val is deprecated.  Use campusrover_msgs-msg:command_type instead.")
  (command_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonCommand>) ostream)
  "Serializes a message object of type '<ButtonCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'button_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonCommand>) istream)
  "Deserializes a message object of type '<ButtonCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'button_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonCommand>)))
  "Returns string type for a message object of type '<ButtonCommand>"
  "campusrover_msgs/ButtonCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonCommand)))
  "Returns string type for a message object of type 'ButtonCommand"
  "campusrover_msgs/ButtonCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonCommand>)))
  "Returns md5sum for a message object of type '<ButtonCommand>"
  "cf26bb118be6044a4021152a65bf823f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonCommand)))
  "Returns md5sum for a message object of type 'ButtonCommand"
  "cf26bb118be6044a4021152a65bf823f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonCommand>)))
  "Returns full string definition for message of type '<ButtonCommand>"
  (cl:format cl:nil "std_msgs/String button_name~%std_msgs/String command_type~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonCommand)))
  "Returns full string definition for message of type 'ButtonCommand"
  (cl:format cl:nil "std_msgs/String button_name~%std_msgs/String command_type~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'button_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonCommand
    (cl:cons ':button_name (button_name msg))
    (cl:cons ':command_type (command_type msg))
))
