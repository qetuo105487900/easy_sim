;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ChargerStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ChargerStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS")
  (make-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ChargerStatus.msg.html


(intern "*UNKNOEN*" (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(shadow '*UNKNOEN* (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(defconstant campusrover_msgs::ChargerStatus::*UNKNOEN* 0)
(intern "*CONNECTED*" (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(shadow '*CONNECTED* (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(defconstant campusrover_msgs::ChargerStatus::*CONNECTED* 1)
(intern "*UNCONNECTED*" (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(shadow '*UNCONNECTED* (find-package "CAMPUSROVER_MSGS::CHARGERSTATUS"))
(defconstant campusrover_msgs::ChargerStatus::*UNCONNECTED* 2)

(defun campusrover_msgs::ChargerStatus-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::ChargerStatus::*UNKNOEN*)
        ((= const 1) 'campusrover_msgs::ChargerStatus::*CONNECTED*)
        ((= const 2) 'campusrover_msgs::ChargerStatus::*UNCONNECTED*)
        (t nil)))

(defclass campusrover_msgs::ChargerStatus
  :super ros::object
  :slots (_status ))

(defmethod campusrover_msgs::ChargerStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get campusrover_msgs::ChargerStatus :md5sum-) "11eb00a286eb748ac3d666ae0507cfc9")
(setf (get campusrover_msgs::ChargerStatus :datatype-) "campusrover_msgs/ChargerStatus")
(setf (get campusrover_msgs::ChargerStatus :definition-)
      "uint8 UNKNOEN = 0
uint8 CONNECTED = 1
uint8 UNCONNECTED = 2
uint8 status
")



(provide :campusrover_msgs/ChargerStatus "11eb00a286eb748ac3d666ae0507cfc9")


