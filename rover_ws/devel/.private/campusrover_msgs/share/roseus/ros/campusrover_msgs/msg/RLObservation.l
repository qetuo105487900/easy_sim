;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::RLObservation)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'RLObservation (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::RLOBSERVATION")
  (make-package "CAMPUSROVER_MSGS::RLOBSERVATION"))

(in-package "ROS")
;;//! \htmlinclude RLObservation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::RLObservation
  :super ros::object
  :slots (_header _observation_value ))

(defmethod campusrover_msgs::RLObservation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:observation_value __observation_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _observation_value __observation_value)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:observation_value
   (&optional __observation_value)
   (if __observation_value (setq _observation_value __observation_value)) _observation_value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _observation_value
    (* 4    (length _observation_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _observation_value
     (write-long (length _observation_value) s)
     (dotimes (i (length _observation_value))
       (sys::poke (elt _observation_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _observation_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observation_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _observation_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::RLObservation :md5sum-) "584d45121da53af3af59190cf228b410")
(setf (get campusrover_msgs::RLObservation :datatype-) "campusrover_msgs/RLObservation")
(setf (get campusrover_msgs::RLObservation :definition-)
      "std_msgs/Header header
float32[] observation_value

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :campusrover_msgs/RLObservation "584d45121da53af3af59190cf228b410")


