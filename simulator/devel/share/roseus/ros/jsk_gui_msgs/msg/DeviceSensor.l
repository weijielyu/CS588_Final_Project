;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::DeviceSensor)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'DeviceSensor (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::DEVICESENSOR")
  (make-package "JSK_GUI_MSGS::DEVICESENSOR"))

(in-package "ROS")
;;//! \htmlinclude DeviceSensor.msg.html


(defclass jsk_gui_msgs::DeviceSensor
  :super ros::object
  :slots (_temperature _relative_humidity _light _pressure _proximity ))

(defmethod jsk_gui_msgs::DeviceSensor
  (:init
   (&key
    ((:temperature __temperature) 0.0)
    ((:relative_humidity __relative_humidity) 0.0)
    ((:light __light) 0.0)
    ((:pressure __pressure) 0.0)
    ((:proximity __proximity) 0.0)
    )
   (send-super :init)
   (setq _temperature (float __temperature))
   (setq _relative_humidity (float __relative_humidity))
   (setq _light (float __light))
   (setq _pressure (float __pressure))
   (setq _proximity (float __proximity))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:relative_humidity
   (&optional __relative_humidity)
   (if __relative_humidity (setq _relative_humidity __relative_humidity)) _relative_humidity)
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:proximity
   (&optional __proximity)
   (if __proximity (setq _proximity __proximity)) _proximity)
  (:serialization-length
   ()
   (+
    ;; float64 _temperature
    8
    ;; float64 _relative_humidity
    8
    ;; float64 _light
    8
    ;; float64 _pressure
    8
    ;; float64 _proximity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_humidity
       (sys::poke _relative_humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _light
       (sys::poke _light (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _proximity
       (sys::poke _proximity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_humidity
     (setq _relative_humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _light
     (setq _light (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _proximity
     (setq _proximity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jsk_gui_msgs::DeviceSensor :md5sum-) "d3861ba768b988b4c249337d4dc6552d")
(setf (get jsk_gui_msgs::DeviceSensor :datatype-) "jsk_gui_msgs/DeviceSensor")
(setf (get jsk_gui_msgs::DeviceSensor :definition-)
      "float64 temperature
float64 relative_humidity
float64 light
float64 pressure
float64 proximity




")



(provide :jsk_gui_msgs/DeviceSensor "d3861ba768b988b4c249337d4dc6552d")


