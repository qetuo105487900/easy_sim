;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::FloorStatus)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'FloorStatus (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::FLOORSTATUS")
  (make-package "CAMPUSROVER_MSGS::FLOORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FloorStatus.msg.html


(defclass campusrover_msgs::FloorStatus
  :super ros::object
  :slots (_init_pressure _init_floor _current_pressure _current_floor ))

(defmethod campusrover_msgs::FloorStatus
  (:init
   (&key
    ((:init_pressure __init_pressure) 0)
    ((:init_floor __init_floor) 0)
    ((:current_pressure __current_pressure) 0)
    ((:current_floor __current_floor) 0)
    )
   (send-super :init)
   (setq _init_pressure (round __init_pressure))
   (setq _init_floor (round __init_floor))
   (setq _current_pressure (round __current_pressure))
   (setq _current_floor (round __current_floor))
   self)
  (:init_pressure
   (&optional __init_pressure)
   (if __init_pressure (setq _init_pressure __init_pressure)) _init_pressure)
  (:init_floor
   (&optional __init_floor)
   (if __init_floor (setq _init_floor __init_floor)) _init_floor)
  (:current_pressure
   (&optional __current_pressure)
   (if __current_pressure (setq _current_pressure __current_pressure)) _current_pressure)
  (:current_floor
   (&optional __current_floor)
   (if __current_floor (setq _current_floor __current_floor)) _current_floor)
  (:serialization-length
   ()
   (+
    ;; int32 _init_pressure
    4
    ;; int32 _init_floor
    4
    ;; int32 _current_pressure
    4
    ;; int32 _current_floor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _init_pressure
       (write-long _init_pressure s)
     ;; int32 _init_floor
       (write-long _init_floor s)
     ;; int32 _current_pressure
       (write-long _current_pressure s)
     ;; int32 _current_floor
       (write-long _current_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _init_pressure
     (setq _init_pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _init_floor
     (setq _init_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_pressure
     (setq _current_pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_floor
     (setq _current_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get campusrover_msgs::FloorStatus :md5sum-) "50c989e719e41082ae566a766279d8c4")
(setf (get campusrover_msgs::FloorStatus :datatype-) "campusrover_msgs/FloorStatus")
(setf (get campusrover_msgs::FloorStatus :definition-)
      "int32 init_pressure
int32 init_floor
int32 current_pressure
int32 current_floor
")



(provide :campusrover_msgs/FloorStatus "50c989e719e41082ae566a766279d8c4")


