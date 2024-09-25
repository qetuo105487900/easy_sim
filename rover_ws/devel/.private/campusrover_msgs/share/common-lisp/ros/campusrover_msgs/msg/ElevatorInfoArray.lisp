; Auto-generated. Do not edit!


(cl:in-package campusrover_msgs-msg)


;//! \htmlinclude ElevatorInfoArray.msg.html

(cl:defclass <ElevatorInfoArray> (roslisp-msg-protocol:ros-message)
  ((elevator_infos
    :reader elevator_infos
    :initarg :elevator_infos
    :type (cl:vector campusrover_msgs-msg:ElevatorInfo)
   :initform (cl:make-array 0 :element-type 'campusrover_msgs-msg:ElevatorInfo :initial-element (cl:make-instance 'campusrover_msgs-msg:ElevatorInfo))))
)

(cl:defclass ElevatorInfoArray (<ElevatorInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name campusrover_msgs-msg:<ElevatorInfoArray> is deprecated: use campusrover_msgs-msg:ElevatorInfoArray instead.")))

(cl:ensure-generic-function 'elevator_infos-val :lambda-list '(m))
(cl:defmethod elevator_infos-val ((m <ElevatorInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader campusrover_msgs-msg:elevator_infos-val is deprecated.  Use campusrover_msgs-msg:elevator_infos instead.")
  (elevator_infos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorInfoArray>) ostream)
  "Serializes a message object of type '<ElevatorInfoArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'elevator_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'elevator_infos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorInfoArray>) istream)
  "Deserializes a message object of type '<ElevatorInfoArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'elevator_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'elevator_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'campusrover_msgs-msg:ElevatorInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorInfoArray>)))
  "Returns string type for a message object of type '<ElevatorInfoArray>"
  "campusrover_msgs/ElevatorInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorInfoArray)))
  "Returns string type for a message object of type 'ElevatorInfoArray"
  "campusrover_msgs/ElevatorInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorInfoArray>)))
  "Returns md5sum for a message object of type '<ElevatorInfoArray>"
  "4e9215978b0b25ebc2893037e3da3bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorInfoArray)))
  "Returns md5sum for a message object of type 'ElevatorInfoArray"
  "4e9215978b0b25ebc2893037e3da3bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorInfoArray>)))
  "Returns full string definition for message of type '<ElevatorInfoArray>"
  (cl:format cl:nil "campusrover_msgs/ElevatorInfo[] elevator_infos~%================================================================================~%MSG: campusrover_msgs/ElevatorInfo~%string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorInfoArray)))
  "Returns full string definition for message of type 'ElevatorInfoArray"
  (cl:format cl:nil "campusrover_msgs/ElevatorInfo[] elevator_infos~%================================================================================~%MSG: campusrover_msgs/ElevatorInfo~%string building~%int64 id~%geometry_msgs/Point elevator_size ~%geometry_msgs/Point elevator_door_size ~%geometry_msgs/Pose outside_button_position ~%geometry_msgs/Pose inside_button_position ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorInfoArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'elevator_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorInfoArray
    (cl:cons ':elevator_infos (elevator_infos msg))
))
