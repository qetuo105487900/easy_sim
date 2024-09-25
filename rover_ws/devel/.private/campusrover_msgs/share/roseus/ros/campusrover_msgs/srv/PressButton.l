;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::PressButton)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'PressButton (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::PRESSBUTTON")
  (make-package "CAMPUSROVER_MSGS::PRESSBUTTON"))
(unless (find-package "CAMPUSROVER_MSGS::PRESSBUTTONREQUEST")
  (make-package "CAMPUSROVER_MSGS::PRESSBUTTONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::PRESSBUTTONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::PRESSBUTTONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass campusrover_msgs::PressButtonRequest
  :super ros::object
  :slots (_button_type ))

(defmethod campusrover_msgs::PressButtonRequest
  (:init
   (&key
    ((:button_type __button_type) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _button_type __button_type)
   self)
  (:button_type
   (&rest __button_type)
   (if (keywordp (car __button_type))
       (send* _button_type __button_type)
     (progn
       (if __button_type (setq _button_type (car __button_type)))
       _button_type)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _button_type
    (send _button_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _button_type
       (send _button_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _button_type
     (send _button_type :deserialize buf ptr-) (incf ptr- (send _button_type :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::PressButtonResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::PressButtonResponse
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

(defclass campusrover_msgs::PressButton
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::PressButton :md5sum-) "f2108c1711893849d03c12dc680c3be5")
(setf (get campusrover_msgs::PressButton :datatype-) "campusrover_msgs/PressButton")
(setf (get campusrover_msgs::PressButton :request) campusrover_msgs::PressButtonRequest)
(setf (get campusrover_msgs::PressButton :response) campusrover_msgs::PressButtonResponse)

(defmethod campusrover_msgs::PressButtonRequest
  (:response () (instance campusrover_msgs::PressButtonResponse :init)))

(setf (get campusrover_msgs::PressButtonRequest :md5sum-) "f2108c1711893849d03c12dc680c3be5")
(setf (get campusrover_msgs::PressButtonRequest :datatype-) "campusrover_msgs/PressButtonRequest")
(setf (get campusrover_msgs::PressButtonRequest :definition-)
      "std_msgs/String button_type

================================================================================
MSG: std_msgs/String
string data
---

")

(setf (get campusrover_msgs::PressButtonResponse :md5sum-) "f2108c1711893849d03c12dc680c3be5")
(setf (get campusrover_msgs::PressButtonResponse :datatype-) "campusrover_msgs/PressButtonResponse")
(setf (get campusrover_msgs::PressButtonResponse :definition-)
      "std_msgs/String button_type

================================================================================
MSG: std_msgs/String
string data
---

")



(provide :campusrover_msgs/PressButton "f2108c1711893849d03c12dc680c3be5")


