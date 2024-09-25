;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::RoomConnected)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'RoomConnected (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ROOMCONNECTED")
  (make-package "CAMPUSROVER_MSGS::ROOMCONNECTED"))

(in-package "ROS")
;;//! \htmlinclude RoomConnected.msg.html


(defclass campusrover_msgs::RoomConnected
  :super ros::object
  :slots (_connection ))

(defmethod campusrover_msgs::RoomConnected
  (:init
   (&key
    ((:connection __connection) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _connection __connection)
   self)
  (:connection
   (&optional __connection)
   (if __connection (setq _connection __connection)) _connection)
  (:serialization-length
   ()
   (+
    ;; string[] _connection
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _connection)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _connection
     (write-long (length _connection) s)
     (dolist (elem _connection)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _connection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connection (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _connection i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get campusrover_msgs::RoomConnected :md5sum-) "43f469704f4cb14b510f898718cdf6a3")
(setf (get campusrover_msgs::RoomConnected :datatype-) "campusrover_msgs/RoomConnected")
(setf (get campusrover_msgs::RoomConnected :definition-)
      "string[] connection
")



(provide :campusrover_msgs/RoomConnected "43f469704f4cb14b510f898718cdf6a3")


