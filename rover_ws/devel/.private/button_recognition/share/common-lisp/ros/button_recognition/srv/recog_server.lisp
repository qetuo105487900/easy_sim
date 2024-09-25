; Auto-generated. Do not edit!


(cl:in-package button_recognition-srv)


;//! \htmlinclude recog_server-request.msg.html

(cl:defclass <recog_server-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass recog_server-request (<recog_server-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recog_server-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recog_server-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name button_recognition-srv:<recog_server-request> is deprecated: use button_recognition-srv:recog_server-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <recog_server-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-srv:image-val is deprecated.  Use button_recognition-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recog_server-request>) ostream)
  "Serializes a message object of type '<recog_server-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recog_server-request>) istream)
  "Deserializes a message object of type '<recog_server-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recog_server-request>)))
  "Returns string type for a service object of type '<recog_server-request>"
  "button_recognition/recog_serverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recog_server-request)))
  "Returns string type for a service object of type 'recog_server-request"
  "button_recognition/recog_serverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recog_server-request>)))
  "Returns md5sum for a message object of type '<recog_server-request>"
  "3e93f1b70ee662ac10c8c863201cbf9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recog_server-request)))
  "Returns md5sum for a message object of type 'recog_server-request"
  "3e93f1b70ee662ac10c8c863201cbf9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recog_server-request>)))
  "Returns full string definition for message of type '<recog_server-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recog_server-request)))
  "Returns full string definition for message of type 'recog_server-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recog_server-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recog_server-request>))
  "Converts a ROS message object to a list"
  (cl:list 'recog_server-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude recog_server-response.msg.html

(cl:defclass <recog_server-response> (roslisp-msg-protocol:ros-message)
  ((box
    :reader box
    :initarg :box
    :type button_recognition-msg:recog_result
    :initform (cl:make-instance 'button_recognition-msg:recog_result)))
)

(cl:defclass recog_server-response (<recog_server-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recog_server-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recog_server-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name button_recognition-srv:<recog_server-response> is deprecated: use button_recognition-srv:recog_server-response instead.")))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <recog_server-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader button_recognition-srv:box-val is deprecated.  Use button_recognition-srv:box instead.")
  (box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recog_server-response>) ostream)
  "Serializes a message object of type '<recog_server-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recog_server-response>) istream)
  "Deserializes a message object of type '<recog_server-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recog_server-response>)))
  "Returns string type for a service object of type '<recog_server-response>"
  "button_recognition/recog_serverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recog_server-response)))
  "Returns string type for a service object of type 'recog_server-response"
  "button_recognition/recog_serverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recog_server-response>)))
  "Returns md5sum for a message object of type '<recog_server-response>"
  "3e93f1b70ee662ac10c8c863201cbf9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recog_server-response)))
  "Returns md5sum for a message object of type 'recog_server-response"
  "3e93f1b70ee662ac10c8c863201cbf9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recog_server-response>)))
  "Returns full string definition for message of type '<recog_server-response>"
  (cl:format cl:nil "recog_result box~%~%~%================================================================================~%MSG: button_recognition/recog_result~%recognition[] data~%~%================================================================================~%MSG: button_recognition/recognition~%int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recog_server-response)))
  "Returns full string definition for message of type 'recog_server-response"
  (cl:format cl:nil "recog_result box~%~%~%================================================================================~%MSG: button_recognition/recog_result~%recognition[] data~%~%================================================================================~%MSG: button_recognition/recognition~%int32 y_min~%int32 x_min~%int32 y_max~%int32 x_max~%int32 categ~%float32 score~%float32 activate_score~%float32 belief~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recog_server-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recog_server-response>))
  "Converts a ROS message object to a list"
  (cl:list 'recog_server-response
    (cl:cons ':box (box msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'recog_server)))
  'recog_server-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'recog_server)))
  'recog_server-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recog_server)))
  "Returns string type for a service object of type '<recog_server>"
  "button_recognition/recog_server")