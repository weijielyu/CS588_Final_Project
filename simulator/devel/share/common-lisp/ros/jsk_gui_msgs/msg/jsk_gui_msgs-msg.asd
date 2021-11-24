
(cl:in-package :asdf)

(defsystem "jsk_gui_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Action" :depends-on ("_package_Action"))
    (:file "_package_Action" :depends-on ("_package"))
    (:file "AndroidSensor" :depends-on ("_package_AndroidSensor"))
    (:file "_package_AndroidSensor" :depends-on ("_package"))
    (:file "DeviceSensor" :depends-on ("_package_DeviceSensor"))
    (:file "_package_DeviceSensor" :depends-on ("_package"))
    (:file "Gravity" :depends-on ("_package_Gravity"))
    (:file "_package_Gravity" :depends-on ("_package"))
    (:file "MagneticField" :depends-on ("_package_MagneticField"))
    (:file "_package_MagneticField" :depends-on ("_package"))
    (:file "MultiTouch" :depends-on ("_package_MultiTouch"))
    (:file "_package_MultiTouch" :depends-on ("_package"))
    (:file "SlackMessage" :depends-on ("_package_SlackMessage"))
    (:file "_package_SlackMessage" :depends-on ("_package"))
    (:file "Tablet" :depends-on ("_package_Tablet"))
    (:file "_package_Tablet" :depends-on ("_package"))
    (:file "Touch" :depends-on ("_package_Touch"))
    (:file "_package_Touch" :depends-on ("_package"))
    (:file "TouchEvent" :depends-on ("_package_TouchEvent"))
    (:file "_package_TouchEvent" :depends-on ("_package"))
    (:file "VoiceMessage" :depends-on ("_package_VoiceMessage"))
    (:file "_package_VoiceMessage" :depends-on ("_package"))
  ))