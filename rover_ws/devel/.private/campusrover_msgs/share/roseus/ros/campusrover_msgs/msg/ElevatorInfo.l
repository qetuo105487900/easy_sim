;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorInfo)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorInfo (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORINFO")
  (make-package "CAMPUSROVER_MSGS::ELEVATORINFO"))

(in-package "ROS")
;;//! \htmlinclude ElevatorInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::ElevatorInfo
  :super ros::object
  :slots (_building _id _elevator_size _elevator_door_size _outside_button_position _inside_button_position ))

(defmethod campusrover_msgs::ElevatorInfo
  (:init
   (&key
    ((:building __building) "")
    ((:id __id) 0)
    ((:elevator_size __elevator_size) (instance geometry_msgs::Point :init))
    ((:elevator_door_size __elevator_door_size) (instance geometry_msgs::Point :init))
    ((:outside_button_position __outside_button_position) (instance geometry_msgs::Pose :init))
    ((:inside_button_position __inside_button_position) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _id (round __id))
   (setq _elevator_size __elevator_size)
   (setq _elevator_door_size __elevator_door_size)
   (setq _outside_button_position __outside_button_position)
   (setq _inside_button_position __inside_button_position)
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:elevator_size
   (&rest __elevator_size)
   (if (keywordp (car __elevator_size))
       (send* _elevator_size __elevator_size)
     (progn
       (if __elevator_size (setq _elevator_size (car __elevator_size)))
       _elevator_size)))
  (:elevator_door_size
   (&rest __elevator_door_size)
   (if (keywordp (car __elevator_door_size))
       (send* _elevator_door_size __elevator_door_size)
     (progn
       (if __elevator_door_size (setq _elevator_door_size (car __elevator_door_size)))
       _elevator_door_size)))
  (:outside_button_position
   (&rest __outside_button_position)
   (if (keywordp (car __outside_button_position))
       (send* _outside_button_position __outside_button_position)
     (progn
       (if __outside_button_position (setq _outside_button_position (car __outside_button_position)))
       _outside_button_position)))
  (:inside_button_position
   (&rest __inside_button_position)
   (if (keywordp (car __inside_button_position))
       (send* _inside_button_position __inside_button_position)
     (progn
       (if __inside_button_position (setq _inside_button_position (car __inside_button_position)))
       _inside_button_position)))
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; int64 _id
    8
    ;; geometry_msgs/Point _elevator_size
    (send _elevator_size :serialization-length)
    ;; geometry_msgs/Point _elevator_door_size
    (send _elevator_door_size :serialization-length)
    ;; geometry_msgs/Pose _outside_button_position
    (send _outside_button_position :serialization-length)
    ;; geometry_msgs/Pose _inside_button_position
    (send _inside_button_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Point _elevator_size
       (send _elevator_size :serialize s)
     ;; geometry_msgs/Point _elevator_door_size
       (send _elevator_door_size :serialize s)
     ;; geometry_msgs/Pose _outside_button_position
       (send _outside_button_position :serialize s)
     ;; geometry_msgs/Pose _inside_button_position
       (send _inside_button_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Point _elevator_size
     (send _elevator_size :deserialize buf ptr-) (incf ptr- (send _elevator_size :serialization-length))
   ;; geometry_msgs/Point _elevator_door_size
     (send _elevator_door_size :deserialize buf ptr-) (incf ptr- (send _elevator_door_size :serialization-length))
   ;; geometry_msgs/Pose _outside_button_position
     (send _outside_button_position :deserialize buf ptr-) (incf ptr- (send _outside_button_position :serialization-length))
   ;; geometry_msgs/Pose _inside_button_position
     (send _inside_button_position :deserialize buf ptr-) (incf ptr- (send _inside_button_position :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::ElevatorInfo :md5sum-) "c883c73d006814a134d52feb5eae455e")
(setf (get campusrover_msgs::ElevatorInfo :datatype-) "campusrover_msgs/ElevatorInfo")
(setf (get campusrover_msgs::ElevatorInfo :definition-)
      "string building
int64 id
geometry_msgs/Point elevator_size 
geometry_msgs/Point elevator_door_size 
geometry_msgs/Pose outside_button_position 
geometry_msgs/Pose inside_button_position 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :campusrover_msgs/ElevatorInfo "c883c73d006814a134d52feb5eae455e")


