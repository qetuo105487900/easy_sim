;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::MapPointPose)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'MapPointPose (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::MAPPOINTPOSE")
  (make-package "CAMPUSROVER_MSGS::MAPPOINTPOSE"))
(unless (find-package "CAMPUSROVER_MSGS::MAPPOINTPOSEREQUEST")
  (make-package "CAMPUSROVER_MSGS::MAPPOINTPOSEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::MAPPOINTPOSERESPONSE")
  (make-package "CAMPUSROVER_MSGS::MAPPOINTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass campusrover_msgs::MapPointPoseRequest
  :super ros::object
  :slots (_building _floor _point ))

(defmethod campusrover_msgs::MapPointPoseRequest
  (:init
   (&key
    ((:building __building) "")
    ((:floor __floor) "")
    ((:point __point) "")
    )
   (send-super :init)
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _point (string __point))
   self)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:point
   (&optional __point)
   (if __point (setq _point __point)) _point)
  (:serialization-length
   ()
   (+
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; string _point
    4 (length _point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;; string _point
       (write-long (length _point) s) (princ _point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::MapPointPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod campusrover_msgs::MapPointPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::MapPointPose
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::MapPointPose :md5sum-) "9fe5216ac464279e66a2d885233c843b")
(setf (get campusrover_msgs::MapPointPose :datatype-) "campusrover_msgs/MapPointPose")
(setf (get campusrover_msgs::MapPointPose :request) campusrover_msgs::MapPointPoseRequest)
(setf (get campusrover_msgs::MapPointPose :response) campusrover_msgs::MapPointPoseResponse)

(defmethod campusrover_msgs::MapPointPoseRequest
  (:response () (instance campusrover_msgs::MapPointPoseResponse :init)))

(setf (get campusrover_msgs::MapPointPoseRequest :md5sum-) "9fe5216ac464279e66a2d885233c843b")
(setf (get campusrover_msgs::MapPointPoseRequest :datatype-) "campusrover_msgs/MapPointPoseRequest")
(setf (get campusrover_msgs::MapPointPoseRequest :definition-)
      "string building
string floor
string point
---
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
")

(setf (get campusrover_msgs::MapPointPoseResponse :md5sum-) "9fe5216ac464279e66a2d885233c843b")
(setf (get campusrover_msgs::MapPointPoseResponse :datatype-) "campusrover_msgs/MapPointPoseResponse")
(setf (get campusrover_msgs::MapPointPoseResponse :definition-)
      "string building
string floor
string point
---
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
")



(provide :campusrover_msgs/MapPointPose "9fe5216ac464279e66a2d885233c843b")


