;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::PlannerFunction)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'PlannerFunction (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTION")
  (make-package "CAMPUSROVER_MSGS::PLANNERFUNCTION"))
(unless (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST")
  (make-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONRESPONSE")
  (make-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(intern "*MODE_GLOBAL_PATH*" (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(shadow '*MODE_GLOBAL_PATH* (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(defconstant campusrover_msgs::PlannerFunctionRequest::*MODE_GLOBAL_PATH* 1)
(intern "*MODE_ELEVATOR_PATH*" (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(shadow '*MODE_ELEVATOR_PATH* (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(defconstant campusrover_msgs::PlannerFunctionRequest::*MODE_ELEVATOR_PATH* 2)
(intern "*MODE_BUTTON_PARKING*" (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(shadow '*MODE_BUTTON_PARKING* (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(defconstant campusrover_msgs::PlannerFunctionRequest::*MODE_BUTTON_PARKING* 3)
(intern "*MODE_PULLOVER_PATH*" (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(shadow '*MODE_PULLOVER_PATH* (find-package "CAMPUSROVER_MSGS::PLANNERFUNCTIONREQUEST"))
(defconstant campusrover_msgs::PlannerFunctionRequest::*MODE_PULLOVER_PATH* 4)

(defun campusrover_msgs::PlannerFunctionRequest-to-symbol (const)
  (cond
        ((= const 1) 'campusrover_msgs::PlannerFunctionRequest::*MODE_GLOBAL_PATH*)
        ((= const 2) 'campusrover_msgs::PlannerFunctionRequest::*MODE_ELEVATOR_PATH*)
        ((= const 3) 'campusrover_msgs::PlannerFunctionRequest::*MODE_BUTTON_PARKING*)
        ((= const 4) 'campusrover_msgs::PlannerFunctionRequest::*MODE_PULLOVER_PATH*)
        (t nil)))

(defclass campusrover_msgs::PlannerFunctionRequest
  :super ros::object
  :slots (_action _direction_inverse _obstacle_avoidance _mode _speed_parameter ))

(defmethod campusrover_msgs::PlannerFunctionRequest
  (:init
   (&key
    ((:action __action) (instance std_msgs::Bool :init))
    ((:direction_inverse __direction_inverse) (instance std_msgs::Bool :init))
    ((:obstacle_avoidance __obstacle_avoidance) (instance std_msgs::Bool :init))
    ((:mode __mode) 0)
    ((:speed_parameter __speed_parameter) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _action __action)
   (setq _direction_inverse __direction_inverse)
   (setq _obstacle_avoidance __obstacle_avoidance)
   (setq _mode (round __mode))
   (setq _speed_parameter __speed_parameter)
   self)
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:direction_inverse
   (&rest __direction_inverse)
   (if (keywordp (car __direction_inverse))
       (send* _direction_inverse __direction_inverse)
     (progn
       (if __direction_inverse (setq _direction_inverse (car __direction_inverse)))
       _direction_inverse)))
  (:obstacle_avoidance
   (&rest __obstacle_avoidance)
   (if (keywordp (car __obstacle_avoidance))
       (send* _obstacle_avoidance __obstacle_avoidance)
     (progn
       (if __obstacle_avoidance (setq _obstacle_avoidance (car __obstacle_avoidance)))
       _obstacle_avoidance)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:speed_parameter
   (&rest __speed_parameter)
   (if (keywordp (car __speed_parameter))
       (send* _speed_parameter __speed_parameter)
     (progn
       (if __speed_parameter (setq _speed_parameter (car __speed_parameter)))
       _speed_parameter)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _action
    (send _action :serialization-length)
    ;; std_msgs/Bool _direction_inverse
    (send _direction_inverse :serialization-length)
    ;; std_msgs/Bool _obstacle_avoidance
    (send _obstacle_avoidance :serialization-length)
    ;; uint8 _mode
    1
    ;; geometry_msgs/Twist _speed_parameter
    (send _speed_parameter :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _action
       (send _action :serialize s)
     ;; std_msgs/Bool _direction_inverse
       (send _direction_inverse :serialize s)
     ;; std_msgs/Bool _obstacle_avoidance
       (send _obstacle_avoidance :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; geometry_msgs/Twist _speed_parameter
       (send _speed_parameter :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;; std_msgs/Bool _direction_inverse
     (send _direction_inverse :deserialize buf ptr-) (incf ptr- (send _direction_inverse :serialization-length))
   ;; std_msgs/Bool _obstacle_avoidance
     (send _obstacle_avoidance :deserialize buf ptr-) (incf ptr- (send _obstacle_avoidance :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Twist _speed_parameter
     (send _speed_parameter :deserialize buf ptr-) (incf ptr- (send _speed_parameter :serialization-length))
   ;;
   self)
  )

(defclass campusrover_msgs::PlannerFunctionResponse
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::PlannerFunctionResponse
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

(defclass campusrover_msgs::PlannerFunction
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::PlannerFunction :md5sum-) "c60ec02ce4d0a2a87272560a3a28c93a")
(setf (get campusrover_msgs::PlannerFunction :datatype-) "campusrover_msgs/PlannerFunction")
(setf (get campusrover_msgs::PlannerFunction :request) campusrover_msgs::PlannerFunctionRequest)
(setf (get campusrover_msgs::PlannerFunction :response) campusrover_msgs::PlannerFunctionResponse)

(defmethod campusrover_msgs::PlannerFunctionRequest
  (:response () (instance campusrover_msgs::PlannerFunctionResponse :init)))

(setf (get campusrover_msgs::PlannerFunctionRequest :md5sum-) "c60ec02ce4d0a2a87272560a3a28c93a")
(setf (get campusrover_msgs::PlannerFunctionRequest :datatype-) "campusrover_msgs/PlannerFunctionRequest")
(setf (get campusrover_msgs::PlannerFunctionRequest :definition-)
      "uint8 MODE_GLOBAL_PATH = 1
uint8 MODE_ELEVATOR_PATH = 2
uint8 MODE_BUTTON_PARKING = 3
uint8 MODE_PULLOVER_PATH = 4
std_msgs/Bool action
std_msgs/Bool direction_inverse
std_msgs/Bool obstacle_avoidance
uint8 mode
geometry_msgs/Twist speed_parameter

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")

(setf (get campusrover_msgs::PlannerFunctionResponse :md5sum-) "c60ec02ce4d0a2a87272560a3a28c93a")
(setf (get campusrover_msgs::PlannerFunctionResponse :datatype-) "campusrover_msgs/PlannerFunctionResponse")
(setf (get campusrover_msgs::PlannerFunctionResponse :definition-)
      "uint8 MODE_GLOBAL_PATH = 1
uint8 MODE_ELEVATOR_PATH = 2
uint8 MODE_BUTTON_PARKING = 3
uint8 MODE_PULLOVER_PATH = 4
std_msgs/Bool action
std_msgs/Bool direction_inverse
std_msgs/Bool obstacle_avoidance
uint8 mode
geometry_msgs/Twist speed_parameter

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")



(provide :campusrover_msgs/PlannerFunction "c60ec02ce4d0a2a87272560a3a28c93a")


