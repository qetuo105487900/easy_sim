;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::ButtonCommand)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'ButtonCommand (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::BUTTONCOMMAND")
  (make-package "CAMPUSROVER_MSGS::BUTTONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ButtonCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass campusrover_msgs::ButtonCommand
  :super ros::object
  :slots (_button_name _command_type ))

(defmethod campusrover_msgs::ButtonCommand
  (:init
   (&key
    ((:button_name __button_name) (instance std_msgs::String :init))
    ((:command_type __command_type) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _button_name __button_name)
   (setq _command_type __command_type)
   self)
  (:button_name
   (&rest __button_name)
   (if (keywordp (car __button_name))
       (send* _button_name __button_name)
     (progn
       (if __button_name (setq _button_name (car __button_name)))
       _button_name)))
  (:command_type
   (&rest __command_type)
   (if (keywordp (car __command_type))
       (send* _command_type __command_type)
     (progn
       (if __command_type (setq _command_type (car __command_type)))
       _command_type)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _button_name
    (send _button_name :serialization-length)
    ;; std_msgs/String _command_type
    (send _command_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _button_name
       (send _button_name :serialize s)
     ;; std_msgs/String _command_type
       (send _command_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _button_name
     (send _button_name :deserialize buf ptr-) (incf ptr- (send _button_name :serialization-length))
   ;; std_msgs/String _command_type
     (send _command_type :deserialize buf ptr-) (incf ptr- (send _command_type :serialization-length))
   ;;
   self)
  )

(setf (get campusrover_msgs::ButtonCommand :md5sum-) "cf26bb118be6044a4021152a65bf823f")
(setf (get campusrover_msgs::ButtonCommand :datatype-) "campusrover_msgs/ButtonCommand")
(setf (get campusrover_msgs::ButtonCommand :definition-)
      "std_msgs/String button_name
std_msgs/String command_type


================================================================================
MSG: std_msgs/String
string data

")



(provide :campusrover_msgs/ButtonCommand "cf26bb118be6044a4021152a65bf823f")


