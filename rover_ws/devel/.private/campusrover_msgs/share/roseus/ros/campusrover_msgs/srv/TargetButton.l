;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::TargetButton)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'TargetButton (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::TARGETBUTTON")
  (make-package "CAMPUSROVER_MSGS::TARGETBUTTON"))
(unless (find-package "CAMPUSROVER_MSGS::TARGETBUTTONREQUEST")
  (make-package "CAMPUSROVER_MSGS::TARGETBUTTONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::TARGETBUTTONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::TARGETBUTTONRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::TargetButtonRequest
  :super ros::object
  :slots (_target_button ))

(defmethod campusrover_msgs::TargetButtonRequest
  (:init
   (&key
    ((:target_button __target_button) "")
    )
   (send-super :init)
   (setq _target_button (string __target_button))
   self)
  (:target_button
   (&optional __target_button)
   (if __target_button (setq _target_button __target_button)) _target_button)
  (:serialization-length
   ()
   (+
    ;; string _target_button
    4 (length _target_button)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_button
       (write-long (length _target_button) s) (princ _target_button s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_button
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_button (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::TargetButtonResponse
  :super ros::object
  :slots (_activate ))

(defmethod campusrover_msgs::TargetButtonResponse
  (:init
   (&key
    ((:activate __activate) nil)
    )
   (send-super :init)
   (setq _activate __activate)
   self)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::TargetButton
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::TargetButton :md5sum-) "1d1f001af806ced13ac6bfa055fecdf2")
(setf (get campusrover_msgs::TargetButton :datatype-) "campusrover_msgs/TargetButton")
(setf (get campusrover_msgs::TargetButton :request) campusrover_msgs::TargetButtonRequest)
(setf (get campusrover_msgs::TargetButton :response) campusrover_msgs::TargetButtonResponse)

(defmethod campusrover_msgs::TargetButtonRequest
  (:response () (instance campusrover_msgs::TargetButtonResponse :init)))

(setf (get campusrover_msgs::TargetButtonRequest :md5sum-) "1d1f001af806ced13ac6bfa055fecdf2")
(setf (get campusrover_msgs::TargetButtonRequest :datatype-) "campusrover_msgs/TargetButtonRequest")
(setf (get campusrover_msgs::TargetButtonRequest :definition-)
      "string target_button
---
bool activate
")

(setf (get campusrover_msgs::TargetButtonResponse :md5sum-) "1d1f001af806ced13ac6bfa055fecdf2")
(setf (get campusrover_msgs::TargetButtonResponse :datatype-) "campusrover_msgs/TargetButtonResponse")
(setf (get campusrover_msgs::TargetButtonResponse :definition-)
      "string target_button
---
bool activate
")



(provide :campusrover_msgs/TargetButton "1d1f001af806ced13ac6bfa055fecdf2")


