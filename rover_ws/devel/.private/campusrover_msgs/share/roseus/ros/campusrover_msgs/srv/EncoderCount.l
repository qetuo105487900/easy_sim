;; Auto-generated. Do not edit!


(when (boundp 'campusrover_msgs::EncoderCount)
  (if (not (find-package "CAMPUSROVER_MSGS"))
    (make-package "CAMPUSROVER_MSGS"))
  (shadow 'EncoderCount (find-package "CAMPUSROVER_MSGS")))
(unless (find-package "CAMPUSROVER_MSGS::ENCODERCOUNT")
  (make-package "CAMPUSROVER_MSGS::ENCODERCOUNT"))
(unless (find-package "CAMPUSROVER_MSGS::ENCODERCOUNTREQUEST")
  (make-package "CAMPUSROVER_MSGS::ENCODERCOUNTREQUEST"))
(unless (find-package "CAMPUSROVER_MSGS::ENCODERCOUNTRESPONSE")
  (make-package "CAMPUSROVER_MSGS::ENCODERCOUNTRESPONSE"))

(in-package "ROS")





(defclass campusrover_msgs::EncoderCountRequest
  :super ros::object
  :slots ())

(defmethod campusrover_msgs::EncoderCountRequest
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

(defclass campusrover_msgs::EncoderCountResponse
  :super ros::object
  :slots (_left_count _right_count ))

(defmethod campusrover_msgs::EncoderCountResponse
  (:init
   (&key
    ((:left_count __left_count) 0)
    ((:right_count __right_count) 0)
    )
   (send-super :init)
   (setq _left_count (round __left_count))
   (setq _right_count (round __right_count))
   self)
  (:left_count
   (&optional __left_count)
   (if __left_count (setq _left_count __left_count)) _left_count)
  (:right_count
   (&optional __right_count)
   (if __right_count (setq _right_count __right_count)) _right_count)
  (:serialization-length
   ()
   (+
    ;; int64 _left_count
    8
    ;; int64 _right_count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _left_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _left_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _left_count) (= (length (_left_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_left_count . bv) 0) 0) s)
              (write-long (ash (elt (_left_count . bv) 1) -1) s))
             ((and (class _left_count) (= (length (_left_count . bv)) 1)) ;; big1
              (write-long (elt (_left_count . bv) 0) s)
              (write-long (if (>= _left_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _left_count s)(write-long (if (>= _left_count 0) 0 #xffffffff) s)))
     ;; int64 _right_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _right_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _right_count) (= (length (_right_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_right_count . bv) 0) 0) s)
              (write-long (ash (elt (_right_count . bv) 1) -1) s))
             ((and (class _right_count) (= (length (_right_count . bv)) 1)) ;; big1
              (write-long (elt (_right_count . bv) 0) s)
              (write-long (if (>= _right_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _right_count s)(write-long (if (>= _right_count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _left_count
#+(or :alpha :irix6 :x86_64)
      (setf _left_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _left_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _right_count
#+(or :alpha :irix6 :x86_64)
      (setf _right_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _right_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass campusrover_msgs::EncoderCount
  :super ros::object
  :slots ())

(setf (get campusrover_msgs::EncoderCount :md5sum-) "310f2c2a4adfa0f8fc31fa2482448b81")
(setf (get campusrover_msgs::EncoderCount :datatype-) "campusrover_msgs/EncoderCount")
(setf (get campusrover_msgs::EncoderCount :request) campusrover_msgs::EncoderCountRequest)
(setf (get campusrover_msgs::EncoderCount :response) campusrover_msgs::EncoderCountResponse)

(defmethod campusrover_msgs::EncoderCountRequest
  (:response () (instance campusrover_msgs::EncoderCountResponse :init)))

(setf (get campusrover_msgs::EncoderCountRequest :md5sum-) "310f2c2a4adfa0f8fc31fa2482448b81")
(setf (get campusrover_msgs::EncoderCountRequest :datatype-) "campusrover_msgs/EncoderCountRequest")
(setf (get campusrover_msgs::EncoderCountRequest :definition-)
      "---
int64 left_count
int64 right_count
")

(setf (get campusrover_msgs::EncoderCountResponse :md5sum-) "310f2c2a4adfa0f8fc31fa2482448b81")
(setf (get campusrover_msgs::EncoderCountResponse :datatype-) "campusrover_msgs/EncoderCountResponse")
(setf (get campusrover_msgs::EncoderCountResponse :definition-)
      "---
int64 left_count
int64 right_count
")



(provide :campusrover_msgs/EncoderCount "310f2c2a4adfa0f8fc31fa2482448b81")


