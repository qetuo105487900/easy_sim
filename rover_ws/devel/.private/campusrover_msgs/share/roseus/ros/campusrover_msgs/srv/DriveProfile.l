;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::DriveProfile)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'DriveProfile (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::DRIVEPROFILE")
  (make-package "CAMPUSROVER_MSGS::DRIVEPROFILE"))
(unless (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST")
  (make-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::DRIVEPROFILERESPONSE")
  (make-package "CAMPUSROVER_MSGS::DRIVEPROFILERESPONSE"))

(in-package "ROS")





(intern "*DRIVE_PROFILE_NOUSE*" (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(shadow '*DRIVE_PROFILE_NOUSE* (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(defconstant campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_NOUSE* 0)
(intern "*DRIVE_PROFILE_DEFAULT*" (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(shadow '*DRIVE_PROFILE_DEFAULT* (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(defconstant campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_DEFAULT* 1)
(intern "*DRIVE_PROFILE_SET*" (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(shadow '*DRIVE_PROFILE_SET* (find-package "CAMPUSROVER_MSGS::DRIVEPROFILEREQUEST"))
(defconstant campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_SET* 2)

(defun campusrover_msgs::DriveProfileRequest-to-symbol (const)
  (cond
        ((= const 0) 'campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_NOUSE*)
        ((= const 1) 'campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_DEFAULT*)
        ((= const 2) 'campusrover_msgs::DriveProfileRequest::*DRIVE_PROFILE_SET*)
        (t nil)))

(defclass campusrover_msgs::DriveProfileRequest
  :super ros::object
  :slots (_drive_profile _acc_max _acc_step _dec_max _dec_step _vel_tolerance _profile_omega_max _profile_omega_step _omega_tolerance _max_speed ))

(defmethod campusrover_msgs::DriveProfileRequest
  (:init
   (&key
    ((:drive_profile __drive_profile) 0)
    ((:acc_max __acc_max) 0.0)
    ((:acc_step __acc_step) 0.0)
    ((:dec_max __dec_max) 0.0)
    ((:dec_step __dec_step) 0.0)
    ((:vel_tolerance __vel_tolerance) 0.0)
    ((:profile_omega_max __profile_omega_max) 0.0)
    ((:profile_omega_step __profile_omega_step) 0.0)
    ((:omega_tolerance __omega_tolerance) 0.0)
    ((:max_speed __max_speed) 0.0)
    )
   (send-super :init)
   (setq _drive_profile (round __drive_profile))
   (setq _acc_max (float __acc_max))
   (setq _acc_step (float __acc_step))
   (setq _dec_max (float __dec_max))
   (setq _dec_step (float __dec_step))
   (setq _vel_tolerance (float __vel_tolerance))
   (setq _profile_omega_max (float __profile_omega_max))
   (setq _profile_omega_step (float __profile_omega_step))
   (setq _omega_tolerance (float __omega_tolerance))
   (setq _max_speed (float __max_speed))
   self)
  (:drive_profile
   (&optional __drive_profile)
   (if __drive_profile (setq _drive_profile __drive_profile)) _drive_profile)
  (:acc_max
   (&optional __acc_max)
   (if __acc_max (setq _acc_max __acc_max)) _acc_max)
  (:acc_step
   (&optional __acc_step)
   (if __acc_step (setq _acc_step __acc_step)) _acc_step)
  (:dec_max
   (&optional __dec_max)
   (if __dec_max (setq _dec_max __dec_max)) _dec_max)
  (:dec_step
   (&optional __dec_step)
   (if __dec_step (setq _dec_step __dec_step)) _dec_step)
  (:vel_tolerance
   (&optional __vel_tolerance)
   (if __vel_tolerance (setq _vel_tolerance __vel_tolerance)) _vel_tolerance)
  (:profile_omega_max
   (&optional __profile_omega_max)
   (if __profile_omega_max (setq _profile_omega_max __profile_omega_max)) _profile_omega_max)
  (:profile_omega_step
   (&optional __profile_omega_step)
   (if __profile_omega_step (setq _profile_omega_step __profile_omega_step)) _profile_omega_step)
  (:omega_tolerance
   (&optional __omega_tolerance)
   (if __omega_tolerance (setq _omega_tolerance __omega_tolerance)) _omega_tolerance)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _drive_profile
    1
    ;; float64 _acc_max
    8
    ;; float64 _acc_step
    8
    ;; float64 _dec_max
    8
    ;; float64 _dec_step
    8
    ;; float64 _vel_tolerance
    8
    ;; float64 _profile_omega_max
    8
    ;; float64 _profile_omega_step
    8
    ;; float64 _omega_tolerance
    8
    ;; float64 _max_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _drive_profile
       (write-byte _drive_profile s)
     ;; float64 _acc_max
       (sys::poke _acc_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_step
       (sys::poke _acc_step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dec_max
       (sys::poke _dec_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dec_step
       (sys::poke _dec_step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_tolerance
       (sys::poke _vel_tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _profile_omega_max
       (sys::poke _profile_omega_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _profile_omega_step
       (sys::poke _profile_omega_step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega_tolerance
       (sys::poke _omega_tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _drive_profile
     (setq _drive_profile (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _acc_max
     (setq _acc_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_step
     (setq _acc_step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dec_max
     (setq _dec_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dec_step
     (setq _dec_step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_tolerance
     (setq _vel_tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _profile_omega_max
     (setq _profile_omega_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _profile_omega_step
     (setq _profile_omega_step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega_tolerance
     (setq _omega_tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_speed
     (setq _max_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass campusrover_msgs::DriveProfileResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::DriveProfileResponse
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

(defclass campusrover_msgs::DriveProfile
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::DriveProfile :md5sum-) "5377416382979c45089c79712b283109")
(setf (get campusrover_msgs::DriveProfile :datatype-) "campusrover_msgs/DriveProfile")
(setf (get campusrover_msgs::DriveProfile :request) campusrover_msgs::DriveProfileRequest)
(setf (get campusrover_msgs::DriveProfile :response) campusrover_msgs::DriveProfileResponse)

(defmethod campusrover_msgs::DriveProfileRequest
  (:response () (instance campusrover_msgs::DriveProfileResponse :init)))

(setf (get campusrover_msgs::DriveProfileRequest :md5sum-) "5377416382979c45089c79712b283109")
(setf (get campusrover_msgs::DriveProfileRequest :datatype-) "campusrover_msgs/DriveProfileRequest")
(setf (get campusrover_msgs::DriveProfileRequest :definition-)
      "uint8 DRIVE_PROFILE_NOUSE = 0
uint8 DRIVE_PROFILE_DEFAULT = 1
uint8 DRIVE_PROFILE_SET = 2
uint8 drive_profile

float64 acc_max 
float64 acc_step
float64 dec_max
float64 dec_step
float64 vel_tolerance
float64 profile_omega_max
float64 profile_omega_step
float64 omega_tolerance
float64 max_speed

---

")

(setf (get campusrover_msgs::DriveProfileResponse :md5sum-) "5377416382979c45089c79712b283109")
(setf (get campusrover_msgs::DriveProfileResponse :datatype-) "campusrover_msgs/DriveProfileResponse")
(setf (get campusrover_msgs::DriveProfileResponse :definition-)
      "uint8 DRIVE_PROFILE_NOUSE = 0
uint8 DRIVE_PROFILE_DEFAULT = 1
uint8 DRIVE_PROFILE_SET = 2
uint8 drive_profile

float64 acc_max 
float64 acc_step
float64 dec_max
float64 dec_step
float64 vel_tolerance
float64 profile_omega_max
float64 profile_omega_step
float64 omega_tolerance
float64 max_speed

---

")



(provide :campusrover_msgs/DriveProfile "5377416382979c45089c79712b283109")


