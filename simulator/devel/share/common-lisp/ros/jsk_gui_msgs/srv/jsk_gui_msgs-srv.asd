
(cl:in-package :asdf)

(defsystem "jsk_gui_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Query" :depends-on ("_package_Query"))
    (:file "_package_Query" :depends-on ("_package"))
    (:file "YesNo" :depends-on ("_package_YesNo"))
    (:file "_package_YesNo" :depends-on ("_package"))
  ))