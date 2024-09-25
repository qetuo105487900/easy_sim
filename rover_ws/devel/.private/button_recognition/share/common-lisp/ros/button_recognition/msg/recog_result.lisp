; Auto-generated. Do not edit!


(cl:in-package button_recognition-msg)


;//! \htmlinclude recog_result.msg.html

(cl:defclass <recog_result> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector button_recognition-msg:recognition)
   :initform (cl:make-array 0 :element-type 'button_recognition-msg:recognition :initial-element (cl:make-instance 'button_recognition-msg:recognition))))
)

(cl:defclass recog_result (<recog_result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recog_result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recog_result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name button_recognition-msg:<recog_result> is deprecated: use button_recognition-msg:recog_result instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <recog_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-msg:data-val is deprecated.  Use button_recognition-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recog_result>) ostream)
  "Serializes a message object of type '<recog_result>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recog_result>) istream)
  "Deserializes a message object of type '<recog_result>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'button_recognition-msg:recognition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recog_result>)))
  "Returns string type for a message object of type '<recog_result>"
  "button_recognition/recog_result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recog_result)))
  "Returns string type for a message object of type 'recog_result"
  "button_recognition/recog_result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recog_result>)))
  "Returns md5sum for a message object of type '<recog_result>"
  "05e683a920c1d216871d06b64fece987")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recog_result)))
  "Returns md5sum for a message object of type 'recog_result"
  "05e683a920c1d216871d06b64fece987")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recog_result>)))
  "Returns full string definition for message of type '<recog_result>"
  (cl:format cl:nil "recognition[] data~%~%================================================================================~%MSG: button_recognition/recognition~%int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recog_result)))
  "Returns full string definition for message of type 'recog_result"
  (cl:format cl:nil "recognition[] data~%~%================================================================================~%MSG: button_recognition/recognition~%int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recog_result>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recog_result>))
  "Converts a ROS message object to a list"
  (cl:list 'recog_result
    (cl:cons ':data (data msg))
))
