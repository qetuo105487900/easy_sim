;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONSTATUS")
  (make-package "CAMPUSROVER_MSGS::BUTTONSTATUS"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONSTATUSREQUEST")
  (make-package "CAMPUSROVER_MSGS::BUTTONSTATUSREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONSTATUSRESPONSE")
  (make-package "CAMPUSROVER_MSGS::BUTTONSTATUSRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ButtonStatusRequest
  :super ros::object
  :slots (_button_status ))

(defmethod campusrover_msgs::ButtonStatusRequest
  (:init
   (&key
    ((:button_status __button_status) nil)
    )
   (send-super :init)
   (setq _button_status __button_status)
   self)
  (:button_status
   (&optional (__button_status :null))
   (if (not (eq __button_status :null)) (setq _button_status __button_status)) _button_status)
  (:serialization-length
   ()
   (+
    ;; bool _button_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _button_status
       (if _button_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _button_status
     (setq _button_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::ButtonStatusResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::ButtonStatusResponse
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

(defclass campusrover_msgs::ButtonStatus
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ButtonStatus :md5sum-) "5eabfc9879043ecc49b3481670b2286f")
(setf (get campusrover_msgs::ButtonStatus :datatype-) "campusrover_msgs/ButtonStatus")
(setf (get campusrover_msgs::ButtonStatus :request) campusrover_msgs::ButtonStatusRequest)
(setf (get campusrover_msgs::ButtonStatus :response) campusrover_msgs::ButtonStatusResponse)

(defmethod campusrover_msgs::ButtonStatusRequest
  (:response () (instance campusrover_msgs::ButtonStatusResponse :init)))

(setf (get campusrover_msgs::ButtonStatusRequest :md5sum-) "5eabfc9879043ecc49b3481670b2286f")
(setf (get campusrover_msgs::ButtonStatusRequest :datatype-) "campusrover_msgs/ButtonStatusRequest")
(setf (get campusrover_msgs::ButtonStatusRequest :definition-)
      "bool button_status
---
")

(setf (get campusrover_msgs::ButtonStatusResponse :md5sum-) "5eabfc9879043ecc49b3481670b2286f")
(setf (get campusrover_msgs::ButtonStatusResponse :datatype-) "campusrover_msgs/ButtonStatusResponse")
(setf (get campusrover_msgs::ButtonStatusResponse :definition-)
      "bool button_status
---
")



(provide :campusrover_msgs/ButtonStatus "5eabfc9879043ecc49b3481670b2286f")


