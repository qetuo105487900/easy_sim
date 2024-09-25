;; Auto-generated. Do not edit!


(when (boundp 'button_recognition::recog_result)
  (if (not (find-package "BUTTON_RECOGNITION"))
    (make-package "BUTTON_RECOGNITION"))
  (shadow 'recog_result (find-package "BUTTON_RECOGNITION")))
(unless (find-package "BUTTON_RECOGNITION::RECOG_RESULT")
  (make-package "BUTTON_RECOGNITION::RECOG_RESULT"))

(in-package "ROS")
;;//! \htmlinclude recog_result.msg.html


(defclass button_recognition::recog_result
  :super ros::object
  :slots (_data ))

(defmethod button_recognition::recog_result
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; button_recognition/recognition[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; button_recognition/recognition[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; button_recognition/recognition[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance button_recognition::recognition :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get button_recognition::recog_result :md5sum-) "05e683a920c1d216871d06b64fece987")
(setf (get button_recognition::recog_result :datatype-) "button_recognition/recog_result")
(setf (get button_recognition::recog_result :definition-)
      "recognition[] data

================================================================================
MSG: button_recognition/recognition
int32 y_min
int32 x_min
int32 y_max
int32 x_max
int32 categ
float32 score
float32 activate_score
float32 belief
string text
")



(provide :button_recognition/recog_result "05e683a920c1d216871d06b64fece987")


