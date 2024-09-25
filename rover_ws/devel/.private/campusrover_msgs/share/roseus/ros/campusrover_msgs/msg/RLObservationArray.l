;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::RLObservationArray)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'RLObservationArray (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::RLOBSERVATIONARRAY")
  (make-package "CAMPUSROVER_MSGS::RLOBSERVATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude RLObservationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::RLObservationArray
  :super ros::object
  :slots (_header _observation ))

(defmethod campusrover_msgs::RLObservationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:observation __observation) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _observation __observation)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:observation
   (&rest __observation)
   (if (keywordp (car __observation))
       (send* _observation __observation)
     (progn
       (if __observation (setq _observation (car __observation)))
       _observation)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; campusrover_msgs/RLObservation[] _observation
    (apply #'+ (send-all _observation :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; campusrover_msgs/RLObservation[] _observation
     (write-long (length _observation) s)
     (dolist (elem _observation)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; campusrover_msgs/RLObservation[] _observation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observation (let (r) (dotimes (i n) (push (instance campusrover_msgs::RLObservation :init) r)) r))
     (dolist (elem- _observation)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::RLObservationArray :md5sum-) "1b9bc5aef578d2bb524b67bcebb72c92")
(setf (get campusrover_msgs::RLObservationArray :datatype-) "campusrover_msgs/RLObservationArray")
(setf (get campusrover_msgs::RLObservationArray :definition-)
      "std_msgs/Header header
campusrover_msgs/RLObservation[] observation
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

================================================================================
MSG: campusrover_msgs/RLObservation
std_msgs/Header header
float32[] observation_value

")



(provide :campusrover_msgs/RLObservationArray "1b9bc5aef578d2bb524b67bcebb72c92")


