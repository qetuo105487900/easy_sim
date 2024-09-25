
(cl:in-package :asdf)

(defsystem "campusrover_move-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "PullOverPathGenerator" :depends-on ("_package_PullOverPathGenerator"))
    (:file "_package_PullOverPathGenerator" :depends-on ("_package"))
  ))