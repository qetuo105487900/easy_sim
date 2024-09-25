;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::DriveStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'DriveStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DRIVESTATUS")
  (make-package "CAMPUSROVER_MSGS::DRIVESTATUS"))
(unless (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST")
  (make-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::DRIVESTATUSRESPONSE")
  (make-package "CAMPUSROVER_MSGS::DRIVESTATUSRESPONSE"))

(in-package "ROS")





(intern "*DRIVE_STATUS_STOP*" (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(shadow '*DRIVE_STATUS_STOP* (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(defconstant campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_STOP* 0)
(intern "*DRIVE_STATUS_RELEASE*" (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(shadow '*DRIVE_STATUS_RELEASE* (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(defconstant campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_RELEASE* 1)
(intern "*DRIVE_STATUS_CMD_CONTROL*" (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(shadow '*DRIVE_STATUS_CMD_CONTROL* (find-package "CAMPUSROVER_MSGS::DRIVESTATUSREQUEST"))
(defconstant campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_CMD_CONTROL* 2)

(defun campusrover_msgs::DriveStatusRequest-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_STOP*)
        ((= const 1) 'campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_RELEASE*)
        ((= const 2) 'campusrover_msgs::DriveStatusRequest::*DRIVE_STATUS_CMD_CONTROL*)
        (t nil)))

(defclass campusrover_msgs::DriveStatusRequest
  :super ros::object
  :slots (_drive_status ))

(defmethod campusrover_msgs::DriveStatusRequest
  (:init
   (&key
    ((:drive_status __drive_status) 0)
    )
   (send-super :init)
   (setq _drive_status (round __drive_status))
   self)
  (:drive_status
   (&optional __drive_status)
   (if __drive_status (setq _drive_status __drive_status)) _drive_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _drive_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _drive_status
       (write-byte _drive_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _drive_status
     (setq _drive_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass campusrover_msgs::DriveStatusResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::DriveStatusResponse
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

(defclass campusrover_msgs::DriveStatus
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::DriveStatus :md5sum-) "4a11cbf62ada3e909e0d717d712b0562")
(setf (get campusrover_msgs::DriveStatus :datatype-) "campusrover_msgs/DriveStatus")
(setf (get campusrover_msgs::DriveStatus :request) campusrover_msgs::DriveStatusRequest)
(setf (get campusrover_msgs::DriveStatus :response) campusrover_msgs::DriveStatusResponse)

(defmethod campusrover_msgs::DriveStatusRequest
  (:response () (instance campusrover_msgs::DriveStatusResponse :init)))

(setf (get campusrover_msgs::DriveStatusRequest :md5sum-) "4a11cbf62ada3e909e0d717d712b0562")
(setf (get campusrover_msgs::DriveStatusRequest :datatype-) "campusrover_msgs/DriveStatusRequest")
(setf (get campusrover_msgs::DriveStatusRequest :definition-)
      "uint8 DRIVE_STATUS_STOP = 0
uint8 DRIVE_STATUS_RELEASE = 1
uint8 DRIVE_STATUS_CMD_CONTROL = 2
uint8 drive_status
---

")

(setf (get campusrover_msgs::DriveStatusResponse :md5sum-) "4a11cbf62ada3e909e0d717d712b0562")
(setf (get campusrover_msgs::DriveStatusResponse :datatype-) "campusrover_msgs/DriveStatusResponse")
(setf (get campusrover_msgs::DriveStatusResponse :definition-)
      "uint8 DRIVE_STATUS_STOP = 0
uint8 DRIVE_STATUS_RELEASE = 1
uint8 DRIVE_STATUS_CMD_CONTROL = 2
uint8 drive_status
---

")



(provide :campusrover_msgs/DriveStatus "4a11cbf62ada3e909e0d717d712b0562")


