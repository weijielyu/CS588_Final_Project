;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::MagneticField)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'MagneticField (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::MAGNETICFIELD")
  (make-package "JSK_GUI_MSGS::MAGNETICFIELD"))

(in-package "ROS")
;;//! \htmlinclude MagneticField.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jsk_gui_msgs::MagneticField
  :super ros::object
  :slots (_magneticfield ))

(defmethod jsk_gui_msgs::MagneticField
  (:init
   (&key
    ((:magneticfield __magneticfield) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _magneticfield __magneticfield)
   self)
  (:magneticfield
   (&rest __magneticfield)
   (if (keywordp (car __magneticfield))
       (send* _magneticfield __magneticfield)
     (progn
       (if __magneticfield (setq _magneticfield (car __magneticfield)))
       _magneticfield)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _magneticfield
    (send _magneticfield :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _magneticfield
       (send _magneticfield :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _magneticfield
     (send _magneticfield :deserialize buf ptr-) (incf ptr- (send _magneticfield :serialization-length))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::MagneticField :md5sum-) "a924df7c82a527d1b76508ed8354604b")
(setf (get jsk_gui_msgs::MagneticField :datatype-) "jsk_gui_msgs/MagneticField")
(setf (get jsk_gui_msgs::MagneticField :definition-)
      "geometry_msgs/Vector3 magneticfield
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :jsk_gui_msgs/MagneticField "a924df7c82a527d1b76508ed8354604b")


