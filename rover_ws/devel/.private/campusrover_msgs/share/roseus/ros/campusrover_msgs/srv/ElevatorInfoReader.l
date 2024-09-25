;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ElevatorInfoReader)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ElevatorInfoReader (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORINFOREADER")
  (make-package "CAMPUSROVER_MSGS::ELEVATORINFOREADER"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORINFOREADERREQUEST")
  (make-package "CAMPUSROVER_MSGS::ELEVATORINFOREADERREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ELEVATORINFOREADERRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ELEVATORINFOREADERRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ElevatorInfoReaderRequest
  :super ros::object
  :slots (_building _elevator_id ))

(defmethod campusrover_msgs::ElevatorInfoReaderRequest
  (:init
   (&key
    ((:building __building) "")
    ((:elevator_id __elevator_id) 0)
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _elevator_id (round __elevator_id))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:elevator_id
   (&optional __elevator_id)
   (if __elevator_id (setq _elevator_id __elevator_id)) _elevator_id)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; int8 _elevator_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; int8 _elevator_id
       (write-byte _elevator_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _elevator_id
     (setq _elevator_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _elevator_id 127) (setq _elevator_id (- _elevator_id 256)))
   ;;
   self)
  )

(defclass campusrover_msgs::ElevatorInfoReaderResponse
  :super ros::object
  :slots (_elevator_infos ))

(defmethod campusrover_msgs::ElevatorInfoReaderResponse
  (:init
   (&key
    ((:elevator_infos __elevator_infos) (instance campusrover_msgs::ElevatorInfoArray :init))
    )
   (send-super :init)
   (setq _elevator_infos __elevator_infos)
   self)
  (:elevator_infos
   (&rest __elevator_infos)
   (if (keywordp (car __elevator_infos))
       (send* _elevator_infos __elevator_infos)
     (progn
       (if __elevator_infos (setq _elevator_infos (car __elevator_infos)))
       _elevator_infos)))
  (:serialization-length
   ()
   (+
    ;; campusrover_msgs/ElevatorInfoArray _elevator_infos
    (send _elevator_infos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; campusrover_msgs/ElevatorInfoArray _elevator_infos
       (send _elevator_infos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; campusrover_msgs/ElevatorInfoArray _elevator_infos
     (send _elevator_infos :deserialize buf ptr-) (incf ptr- (send _elevator_infos :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::ElevatorInfoReader
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ElevatorInfoReader :md5sum-) "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(setf (get campusrover_msgs::ElevatorInfoReader :datatype-) "campusrover_msgs/ElevatorInfoReader")
(setf (get campusrover_msgs::ElevatorInfoReader :request) campusrover_msgs::ElevatorInfoReaderRequest)
(setf (get campusrover_msgs::ElevatorInfoReader :response) campusrover_msgs::ElevatorInfoReaderResponse)

(defmethod campusrover_msgs::ElevatorInfoReaderRequest
  (:response () (instance campusrover_msgs::ElevatorInfoReaderResponse :init)))

(setf (get campusrover_msgs::ElevatorInfoReaderRequest :md5sum-) "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(setf (get campusrover_msgs::ElevatorInfoReaderRequest :datatype-) "campusrover_msgs/ElevatorInfoReaderRequest")
(setf (get campusrover_msgs::ElevatorInfoReaderRequest :definition-)
      "string building
int8 elevator_id
---
ElevatorInfoArray elevator_infos

================================================================================
MSG: campusrover_msgs/ElevatorInfoArray
campusrover_msgs/ElevatorInfo[] elevator_infos
================================================================================
MSG: campusrover_msgs/ElevatorInfo
string building
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

(setf (get campusrover_msgs::ElevatorInfoReaderResponse :md5sum-) "5b0fce0ae6e42e7d4a2cd3e0f8048504")
(setf (get campusrover_msgs::ElevatorInfoReaderResponse :datatype-) "campusrover_msgs/ElevatorInfoReaderResponse")
(setf (get campusrover_msgs::ElevatorInfoReaderResponse :definition-)
      "string building
int8 elevator_id
---
ElevatorInfoArray elevator_infos

================================================================================
MSG: campusrover_msgs/ElevatorInfoArray
campusrover_msgs/ElevatorInfo[] elevator_infos
================================================================================
MSG: campusrover_msgs/ElevatorInfo
string building
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



(provide :campusrover_msgs/ElevatorInfoReader "5b0fce0ae6e42e7d4a2cd3e0f8048504")


