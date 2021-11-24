
(cl:in-package :asdf)

(defsystem "view_controller_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CameraPlacement" :depends-on ("_package_CameraPlacement"))
    (:file "_package_CameraPlacement" :depends-on ("_package"))
  ))