;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::LocalizerLauncher)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'LocalizerLauncher (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHER")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHER"))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERRESPONSE")
  (make-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERRESPONSE"))

(in-package "ROS")





(intern "*LOCOLIZAR_2D_VLP16_ODOM*" (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(shadow '*LOCOLIZAR_2D_VLP16_ODOM* (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(defconstant campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_VLP16_ODOM* 0)
(intern "*LOCOLIZAR_2D_HOKUYO_ODOM*" (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(shadow '*LOCOLIZAR_2D_HOKUYO_ODOM* (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(defconstant campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_HOKUYO_ODOM* 1)
(intern "*LOCOLIZAR_2D_YD_ODOM*" (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(shadow '*LOCOLIZAR_2D_YD_ODOM* (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(defconstant campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_YD_ODOM* 2)
(intern "*LOCOLIZAR_2D_YD_SCAN_MATCHING*" (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(shadow '*LOCOLIZAR_2D_YD_SCAN_MATCHING* (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(defconstant campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_YD_SCAN_MATCHING* 3)
(intern "*LOCOLIZAR_3D_VLP16_ODOM*" (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(shadow '*LOCOLIZAR_3D_VLP16_ODOM* (find-package "CAMPUSROVER_MSGS::LOCALIZERLAUNCHERREQUEST"))
(defconstant campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_3D_VLP16_ODOM* 4)

(defun campusrover_msgs::LocalizerLauncherRequest-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_VLP16_ODOM*)
        ((= const 1) 'campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_HOKUYO_ODOM*)
        ((= const 2) 'campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_YD_ODOM*)
        ((= const 3) 'campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_2D_YD_SCAN_MATCHING*)
        ((= const 4) 'campusrover_msgs::LocalizerLauncherRequest::*LOCOLIZAR_3D_VLP16_ODOM*)
        (t nil)))

(defclass campusrover_msgs::LocalizerLauncherRequest
  :super ros::object
  :slots (_localizer _map_file ))

(defmethod campusrover_msgs::LocalizerLauncherRequest
  (:init
   (&key
    ((:localizer __localizer) 0)
    ((:map_file __map_file) "")
    )
   (send-super :init)
   (setq _localizer (round __localizer))
   (setq _map_file (string __map_file))
   self)
  (:localizer
   (&optional __localizer)
   (if __localizer (setq _localizer __localizer)) _localizer)
  (:map_file
   (&optional __map_file)
   (if __map_file (setq _map_file __map_file)) _map_file)
  (:serialization-length
   ()
   (+
    ;; uint8 _localizer
    1
    ;; string _map_file
    4 (length _map_file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _localizer
       (write-byte _localizer s)
     ;; string _map_file
       (write-long (length _map_file) s) (princ _map_file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _localizer
     (setq _localizer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _map_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass campusrover_msgs::LocalizerLauncherResponse
  :super ros::object
  :slots (_pid ))

(defmethod campusrover_msgs::LocalizerLauncherResponse
  (:init
   (&key
    ((:pid __pid) 0)
    )
   (send-super :init)
   (setq _pid (round __pid))
   self)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:serialization-length
   ()
   (+
    ;; int16 _pid
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pid
       (write-word _pid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass campusrover_msgs::LocalizerLauncher
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::LocalizerLauncher :md5sum-) "8eb55704262cb8d370c8eac127c46d76")
(setf (get campusrover_msgs::LocalizerLauncher :datatype-) "campusrover_msgs/LocalizerLauncher")
(setf (get campusrover_msgs::LocalizerLauncher :request) campusrover_msgs::LocalizerLauncherRequest)
(setf (get campusrover_msgs::LocalizerLauncher :response) campusrover_msgs::LocalizerLauncherResponse)

(defmethod campusrover_msgs::LocalizerLauncherRequest
  (:response () (instance campusrover_msgs::LocalizerLauncherResponse :init)))

(setf (get campusrover_msgs::LocalizerLauncherRequest :md5sum-) "8eb55704262cb8d370c8eac127c46d76")
(setf (get campusrover_msgs::LocalizerLauncherRequest :datatype-) "campusrover_msgs/LocalizerLauncherRequest")
(setf (get campusrover_msgs::LocalizerLauncherRequest :definition-)
      "uint8 LOCOLIZAR_2D_VLP16_ODOM=0
uint8 LOCOLIZAR_2D_HOKUYO_ODOM=1
uint8 LOCOLIZAR_2D_YD_ODOM=2
uint8 LOCOLIZAR_2D_YD_SCAN_MATCHING=3
uint8 LOCOLIZAR_3D_VLP16_ODOM=4

uint8 localizer
string map_file
---
int16 pid
")

(setf (get campusrover_msgs::LocalizerLauncherResponse :md5sum-) "8eb55704262cb8d370c8eac127c46d76")
(setf (get campusrover_msgs::LocalizerLauncherResponse :datatype-) "campusrover_msgs/LocalizerLauncherResponse")
(setf (get campusrover_msgs::LocalizerLauncherResponse :definition-)
      "uint8 LOCOLIZAR_2D_VLP16_ODOM=0
uint8 LOCOLIZAR_2D_HOKUYO_ODOM=1
uint8 LOCOLIZAR_2D_YD_ODOM=2
uint8 LOCOLIZAR_2D_YD_SCAN_MATCHING=3
uint8 LOCOLIZAR_3D_VLP16_ODOM=4

uint8 localizer
string map_file
---
int16 pid
")



(provide :campusrover_msgs/LocalizerLauncher "8eb55704262cb8d370c8eac127c46d76")


