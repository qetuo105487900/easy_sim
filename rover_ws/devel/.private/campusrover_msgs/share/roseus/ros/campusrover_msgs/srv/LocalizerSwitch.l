;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::LocalizerSwitch)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'LocalizerSwitch (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCH")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERSWITCH"))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHRESPONSE")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHRESPONSE"))

(in-package "ROS")





(intern "*MODE_DISABLE*" (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(shadow '*MODE_DISABLE* (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(defconstant campusrover_msgs::LocalizerSwitchRequest::*MODE_DISABLE* 0)
(intern "*MODE_ENABLE*" (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(shadow '*MODE_ENABLE* (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(defconstant campusrover_msgs::LocalizerSwitchRequest::*MODE_ENABLE* 1)
(intern "*MODE_PURE_2D_SCANMATCHING*" (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(shadow '*MODE_PURE_2D_SCANMATCHING* (find-package "CAMPUSROVER_MSGS::LOCALIZERSWITCHREQUEST"))
(defconstant campusrover_msgs::LocalizerSwitchRequest::*MODE_PURE_2D_SCANMATCHING* 2)

(defun campusrover_msgs::LocalizerSwitchRequest-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::LocalizerSwitchRequest::*MODE_DISABLE*)
        ((= const 1) 'campusrover_msgs::LocalizerSwitchRequest::*MODE_ENABLE*)
        ((= const 2) 'campusrover_msgs::LocalizerSwitchRequest::*MODE_PURE_2D_SCANMATCHING*)
        (t nil)))

(defclass campusrover_msgs::LocalizerSwitchRequest
  :super ros::object
  :slots (_mode _building _floor _init_point ))

(defmethod campusrover_msgs::LocalizerSwitchRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:building __building) "")
    ((:floor __floor) "")
    ((:init_point __init_point) "")
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _building (string __building))
   (setq _floor (string __floor))
   (setq _init_point (string __init_point))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:building
   (&optional __building)
   (if __building (setq _building __building)) _building)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:init_point
   (&optional __init_point)
   (if __init_point (setq _init_point __init_point)) _init_point)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; string _building
    4 (length _building)
    ;; string _floor
    4 (length _floor)
    ;; string _init_point
    4 (length _init_point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; string _building
       (write-long (length _building) s) (princ _building s)
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;; string _init_point
       (write-long (length _init_point) s) (princ _init_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _building
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _init_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _init_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::LocalizerSwitchResponse
  :super ros::object
  :slots (_message ))

(defmethod campusrover_msgs::LocalizerSwitchResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::LocalizerSwitch
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::LocalizerSwitch :md5sum-) "a4fafa508ea4bd2a92362c5cfceeb827")
(setf (get campusrover_msgs::LocalizerSwitch :datatype-) "campusrover_msgs/LocalizerSwitch")
(setf (get campusrover_msgs::LocalizerSwitch :request) campusrover_msgs::LocalizerSwitchRequest)
(setf (get campusrover_msgs::LocalizerSwitch :response) campusrover_msgs::LocalizerSwitchResponse)

(defmethod campusrover_msgs::LocalizerSwitchRequest
  (:response () (instance campusrover_msgs::LocalizerSwitchResponse :init)))

(setf (get campusrover_msgs::LocalizerSwitchRequest :md5sum-) "a4fafa508ea4bd2a92362c5cfceeb827")
(setf (get campusrover_msgs::LocalizerSwitchRequest :datatype-) "campusrover_msgs/LocalizerSwitchRequest")
(setf (get campusrover_msgs::LocalizerSwitchRequest :definition-)
      "uint8 MODE_DISABLE = 0
uint8 MODE_ENABLE = 1
uint8 MODE_PURE_2D_SCANMATCHING = 2

uint8 mode
string building
string floor
string init_point
---
string message
")

(setf (get campusrover_msgs::LocalizerSwitchResponse :md5sum-) "a4fafa508ea4bd2a92362c5cfceeb827")
(setf (get campusrover_msgs::LocalizerSwitchResponse :datatype-) "campusrover_msgs/LocalizerSwitchResponse")
(setf (get campusrover_msgs::LocalizerSwitchResponse :definition-)
      "uint8 MODE_DISABLE = 0
uint8 MODE_ENABLE = 1
uint8 MODE_PURE_2D_SCANMATCHING = 2

uint8 mode
string building
string floor
string init_point
---
string message
")



(provide :campusrover_msgs/LocalizerSwitch "a4fafa508ea4bd2a92362c5cfceeb827")


