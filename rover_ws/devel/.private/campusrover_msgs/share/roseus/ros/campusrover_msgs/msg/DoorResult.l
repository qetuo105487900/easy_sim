;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::DoorResult)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'DoorResult (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DOORRESULT")
  (make-package "CAMPUSROVER_MSGS::DOORRESULT"))

(in-package "ROS")
;;//! \htmlinclude DoorResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::DoorResult
  :super ros::object
  :slots (_left_door_status _rate_bottom_left _rate_door_left _rate_middle_left _right_door_status _rate_bottom_right _rate_door_right _rate_middle_right _locate ))

(defmethod campusrover_msgs::DoorResult
  (:init
   (&key
    ((:left_door_status __left_door_status) (instance std_msgs::Header :init))
    ((:rate_bottom_left __rate_bottom_left) 0.0)
    ((:rate_door_left __rate_door_left) 0.0)
    ((:rate_middle_left __rate_middle_left) 0.0)
    ((:right_door_status __right_door_status) (instance std_msgs::Header :init))
    ((:rate_bottom_right __rate_bottom_right) 0.0)
    ((:rate_door_right __rate_door_right) 0.0)
    ((:rate_middle_right __rate_middle_right) 0.0)
    ((:locate __locate) "")
    )
   (send-super :init)
   (setq _left_door_status __left_door_status)
   (setq _rate_bottom_left (float __rate_bottom_left))
   (setq _rate_door_left (float __rate_door_left))
   (setq _rate_middle_left (float __rate_middle_left))
   (setq _right_door_status __right_door_status)
   (setq _rate_bottom_right (float __rate_bottom_right))
   (setq _rate_door_right (float __rate_door_right))
   (setq _rate_middle_right (float __rate_middle_right))
   (setq _locate (string __locate))
   self)
  (:left_door_status
   (&rest __left_door_status)
   (if (keywordp (car __left_door_status))
       (send* _left_door_status __left_door_status)
     (progn
       (if __left_door_status (setq _left_door_status (car __left_door_status)))
       _left_door_status)))
  (:rate_bottom_left
   (&optional __rate_bottom_left)
   (if __rate_bottom_left (setq _rate_bottom_left __rate_bottom_left)) _rate_bottom_left)
  (:rate_door_left
   (&optional __rate_door_left)
   (if __rate_door_left (setq _rate_door_left __rate_door_left)) _rate_door_left)
  (:rate_middle_left
   (&optional __rate_middle_left)
   (if __rate_middle_left (setq _rate_middle_left __rate_middle_left)) _rate_middle_left)
  (:right_door_status
   (&rest __right_door_status)
   (if (keywordp (car __right_door_status))
       (send* _right_door_status __right_door_status)
     (progn
       (if __right_door_status (setq _right_door_status (car __right_door_status)))
       _right_door_status)))
  (:rate_bottom_right
   (&optional __rate_bottom_right)
   (if __rate_bottom_right (setq _rate_bottom_right __rate_bottom_right)) _rate_bottom_right)
  (:rate_door_right
   (&optional __rate_door_right)
   (if __rate_door_right (setq _rate_door_right __rate_door_right)) _rate_door_right)
  (:rate_middle_right
   (&optional __rate_middle_right)
   (if __rate_middle_right (setq _rate_middle_right __rate_middle_right)) _rate_middle_right)
  (:locate
   (&optional __locate)
   (if __locate (setq _locate __locate)) _locate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _left_door_status
    (send _left_door_status :serialization-length)
    ;; float32 _rate_bottom_left
    4
    ;; float32 _rate_door_left
    4
    ;; float32 _rate_middle_left
    4
    ;; std_msgs/Header _right_door_status
    (send _right_door_status :serialization-length)
    ;; float32 _rate_bottom_right
    4
    ;; float32 _rate_door_right
    4
    ;; float32 _rate_middle_right
    4
    ;; string _locate
    4 (length _locate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _left_door_status
       (send _left_door_status :serialize s)
     ;; float32 _rate_bottom_left
       (sys::poke _rate_bottom_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rate_door_left
       (sys::poke _rate_door_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rate_middle_left
       (sys::poke _rate_middle_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; std_msgs/Header _right_door_status
       (send _right_door_status :serialize s)
     ;; float32 _rate_bottom_right
       (sys::poke _rate_bottom_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rate_door_right
       (sys::poke _rate_door_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rate_middle_right
       (sys::poke _rate_middle_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _locate
       (write-long (length _locate) s) (princ _locate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _left_door_status
     (send _left_door_status :deserialize buf ptr-) (incf ptr- (send _left_door_status :serialization-length))
   ;; float32 _rate_bottom_left
     (setq _rate_bottom_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rate_door_left
     (setq _rate_door_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rate_middle_left
     (setq _rate_middle_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; std_msgs/Header _right_door_status
     (send _right_door_status :deserialize buf ptr-) (incf ptr- (send _right_door_status :serialization-length))
   ;; float32 _rate_bottom_right
     (setq _rate_bottom_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rate_door_right
     (setq _rate_door_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rate_middle_right
     (setq _rate_middle_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _locate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _locate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get campusrover_msgs::DoorResult :md5sum-) "6c07e76e4878ab6c525aa5c9ac930982")
(setf (get campusrover_msgs::DoorResult :datatype-) "campusrover_msgs/DoorResult")
(setf (get campusrover_msgs::DoorResult :definition-)
      "std_msgs/Header left_door_status
float32 rate_bottom_left
float32 rate_door_left
float32 rate_middle_left

std_msgs/Header right_door_status
float32 rate_bottom_right
float32 rate_door_right
float32 rate_middle_right

string locate
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



(provide :campusrover_msgs/DoorResult "6c07e76e4878ab6c525aa5c9ac930982")


