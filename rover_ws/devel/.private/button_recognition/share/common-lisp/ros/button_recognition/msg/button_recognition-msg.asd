
(cl:in-package :asdf)

(defsystem "button_recognition-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "recog_result" :depends-on ("_package_recog_result"))
    (:file "_package_recog_result" :depends-on ("_package"))
    (:file "recognition" :depends-on ("_package_recognition"))
    (:file "_package_recognition" :depends-on ("_package"))
  ))