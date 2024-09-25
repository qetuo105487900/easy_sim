;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ModuleInfo)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ModuleInfo (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MODULEINFO")
  (make-package "CAMPUSROVER_MSGS::MODULEINFO"))
(unless (find-package "CAMPUSROVER_MSGS::MODULEINFOREQUEST")
  (make-package "CAMPUSROVER_MSGS::MODULEINFOREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MODULEINFORESPONSE")
  (make-package "CAMPUSROVER_MSGS::MODULEINFORESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ModuleInfoRequest
  :super ros::object
  :slots (_building _floor ))

(defmethod campusrover_msgs::ModuleInfoRequest
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::ModuleInfoResponse
  :super ros::object
  :slots (_frame_id _node _connections ))

(defmethod campusrover_msgs::ModuleInfoResponse
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:node __node) ())
    ((:connections __connections) ())
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _node __node)
   (setq _connections __connections)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:connections
   (&rest __connections)
   (if (keywordp (car __connections))
       (send* _connections __connections)
     (progn
       (if __connections (setq _connections (car __connections)))
       _connections)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; campusrover_msgs/NodeInfo[] _node
    (apply #'+ (send-all _node :serialization-length)) 4
    ;; campusrover_msgs/RoomConnected[] _connections
    (apply #'+ (send-all _connections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; campusrover_msgs/NodeInfo[] _node
     (write-long (length _node) s)
     (dolist (elem _node)
       (send elem :serialize s)
       )
     ;; campusrover_msgs/RoomConnected[] _connections
     (write-long (length _connections) s)
     (dolist (elem _connections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; campusrover_msgs/NodeInfo[] _node
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node (let (r) (dotimes (i n) (push (instance campusrover_msgs::NodeInfo :init) r)) r))
     (dolist (elem- _node)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; campusrover_msgs/RoomConnected[] _connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connections (let (r) (dotimes (i n) (push (instance campusrover_msgs::RoomConnected :init) r)) r))
     (dolist (elem- _connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass campusrover_msgs::ModuleInfo
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ModuleInfo :md5sum-) "55d2c427bdf7bbce8ecb662848fd46e6")
(setf (get campusrover_msgs::ModuleInfo :datatype-) "campusrover_msgs/ModuleInfo")
(setf (get campusrover_msgs::ModuleInfo :request) campusrover_msgs::ModuleInfoRequest)
(setf (get campusrover_msgs::ModuleInfo :response) campusrover_msgs::ModuleInfoResponse)

(defmethod campusrover_msgs::ModuleInfoRequest
  (:response () (instance campusrover_msgs::ModuleInfoResponse :init)))

(setf (get campusrover_msgs::ModuleInfoRequest :md5sum-) "55d2c427bdf7bbce8ecb662848fd46e6")
(setf (get campusrover_msgs::ModuleInfoRequest :datatype-) "campusrover_msgs/ModuleInfoRequest")
(setf (get campusrover_msgs::ModuleInfoRequest :definition-)
      "string building
string floor
---
string frame_id
campusrover_msgs/NodeInfo[] node
campusrover_msgs/RoomConnected[] connections

================================================================================
MSG: campusrover_msgs/NodeInfo
string name
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: campusrover_msgs/RoomConnected
")

(setf (get campusrover_msgs::ModuleInfoResponse :md5sum-) "55d2c427bdf7bbce8ecb662848fd46e6")
(setf (get campusrover_msgs::ModuleInfoResponse :datatype-) "campusrover_msgs/ModuleInfoResponse")
(setf (get campusrover_msgs::ModuleInfoResponse :definition-)
      "string building
string floor
---
string frame_id
campusrover_msgs/NodeInfo[] node
campusrover_msgs/RoomConnected[] connections

================================================================================
MSG: campusrover_msgs/NodeInfo
string name
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: campusrover_msgs/RoomConnected
")



(provide :campusrover_msgs/ModuleInfo "55d2c427bdf7bbce8ecb662848fd46e6")


