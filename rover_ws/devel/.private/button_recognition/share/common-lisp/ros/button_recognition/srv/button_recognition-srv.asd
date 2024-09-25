
(cl:in-package :asdf)

(defsystem "button_recognition-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :button_recognition-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "recog_server" :depends-on ("_package_recog_server"))
    (:file "_package_recog_server" :depends-on ("_package"))
  ))