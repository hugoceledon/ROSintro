
(cl:in-package :asdf)

(defsystem "robot_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "maxTwoInts" :depends-on ("_package_maxTwoInts"))
    (:file "_package_maxTwoInts" :depends-on ("_package"))
  ))