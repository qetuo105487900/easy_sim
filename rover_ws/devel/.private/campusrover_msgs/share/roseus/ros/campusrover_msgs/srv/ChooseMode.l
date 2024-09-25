;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ChooseMode)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ChooseMode (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::CHOOSEMODE")
  (make-package "CAMPUSROVER_MSGS::CHOOSEMODE"))
(unless (find-package "CAMPUSROVER_MSGS::CHOOSEMODEREQUEST")
  (make-package "CAMPUSROVER_MSGS::CHOOSEMODEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::CHOOSEMODERESPONSE")
  (make-package "CAMPUSROVER_MSGS::CHOOSEMODERESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::ChooseModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod campusrover_msgs::ChooseModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass campusrover_msgs::ChooseModeResponse
  :super ros::object
  :slots (_success ))

(defmethod campusrover_msgs::ChooseModeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::ChooseMode
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::ChooseMode :md5sum-) "5da578ca824a6682cf704b593bb1a59e")
(setf (get campusrover_msgs::ChooseMode :datatype-) "campusrover_msgs/ChooseMode")
(setf (get campusrover_msgs::ChooseMode :request) campusrover_msgs::ChooseModeRequest)
(setf (get campusrover_msgs::ChooseMode :response) campusrover_msgs::ChooseModeResponse)

(defmethod campusrover_msgs::ChooseModeRequest
  (:response () (instance campusrover_msgs::ChooseModeResponse :init)))

(setf (get campusrover_msgs::ChooseModeRequest :md5sum-) "5da578ca824a6682cf704b593bb1a59e")
(setf (get campusrover_msgs::ChooseModeRequest :datatype-) "campusrover_msgs/ChooseModeRequest")
(setf (get campusrover_msgs::ChooseModeRequest :definition-)
      "int8 mode
---
bool success

")

(setf (get campusrover_msgs::ChooseModeResponse :md5sum-) "5da578ca824a6682cf704b593bb1a59e")
(setf (get campusrover_msgs::ChooseModeResponse :datatype-) "campusrover_msgs/ChooseModeResponse")
(setf (get campusrover_msgs::ChooseModeResponse :definition-)
      "int8 mode
---
bool success

")



(provide :campusrover_msgs/ChooseMode "5da578ca824a6682cf704b593bb1a59e")


