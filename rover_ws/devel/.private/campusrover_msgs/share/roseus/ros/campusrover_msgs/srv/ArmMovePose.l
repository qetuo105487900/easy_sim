;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ArmMovePose)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ArmMovePose (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ARMMOVEPOSE")
  (make-package "CAMPUSROVER_MSGS::ARMMOVEPOSE"))
(unless (find-package "CAMPUSROVER_MSGS::ARMMOVEPOSEREQUEST")
  (make-package "CAMPUSROVER_MSGS::ARMMOVEPOSEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ARMMOVEPOSERESPONSE")
  (make-package "CAMPUSROVER_MSGS::ARMMOVEPOSERESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ArmMovePoseRequest
  :super ros::object
  :slots (_pose_name ))

(defmethod campusrover_msgs::ArmMovePoseRequest
  (:init
   (&key
    ((:pose_name __pose_name) "")
    )
   (send-super :init)
   (setq _pose_name (string __pose_name))
   self)
  (:pose_name
   (&optional __pose_name)
   (if __pose_name (setq _pose_name __pose_name)) _pose_name)
  (:serialization-length
   ()
   (+
    ;; string _pose_name
    4 (length _pose_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pose_name
       (write-long (length _pose_name) s) (princ _pose_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pose_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::ArmMovePoseResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ArmMovePoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass campusrover_msgs::ArmMovePose
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ArmMovePose :md5sum-) "e6184073e8e665fb2bf0be194fc36541")
(setf (get campusrover_msgs::ArmMovePose :datatype-) "campusrover_msgs/ArmMovePose")
(setf (get campusrover_msgs::ArmMovePose :request) campusrover_msgs::ArmMovePoseRequest)
(setf (get campusrover_msgs::ArmMovePose :response) campusrover_msgs::ArmMovePoseResponse)

(defmethod campusrover_msgs::ArmMovePoseRequest
  (:response () (instance campusrover_msgs::ArmMovePoseResponse :init)))

(setf (get campusrover_msgs::ArmMovePoseRequest :md5sum-) "e6184073e8e665fb2bf0be194fc36541")
(setf (get campusrover_msgs::ArmMovePoseRequest :datatype-) "campusrover_msgs/ArmMovePoseRequest")
(setf (get campusrover_msgs::ArmMovePoseRequest :definition-)
      "string pose_name
---
")

(setf (get campusrover_msgs::ArmMovePoseResponse :md5sum-) "e6184073e8e665fb2bf0be194fc36541")
(setf (get campusrover_msgs::ArmMovePoseResponse :datatype-) "campusrover_msgs/ArmMovePoseResponse")
(setf (get campusrover_msgs::ArmMovePoseResponse :definition-)
      "string pose_name
---
")



(provide :campusrover_msgs/ArmMovePose "e6184073e8e665fb2bf0be194fc36541")


