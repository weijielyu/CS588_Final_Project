;; Auto-generated. Do not edit!


(when (boundp 'jsk_topic_tools::PassthroughDuration)
  (if (not (find-package "JSK_TOPIC_TOOLS"))
    (make-package "JSK_TOPIC_TOOLS"))
  (shadow 'PassthroughDuration (find-package "JSK_TOPIC_TOOLS")))
(unless (find-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATION")
  (make-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATION"))
(unless (find-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATIONREQUEST")
  (make-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATIONREQUEST"))
(unless (find-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATIONRESPONSE")
  (make-package "JSK_TOPIC_TOOLS::PASSTHROUGHDURATIONRESPONSE"))

(in-package "ROS")





(defclass jsk_topic_tools::PassthroughDurationRequest
  :super ros::object
  :slots (_duration ))

(defmethod jsk_topic_tools::PassthroughDurationRequest
  (:init
   (&key
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _duration __duration)
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jsk_topic_tools::PassthroughDurationResponse
  :super ros::object
  :slots ())

(defmethod jsk_topic_tools::PassthroughDurationResponse
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

(defclass jsk_topic_tools::PassthroughDuration
  :super ros::object
  :slots ())

(setf (get jsk_topic_tools::PassthroughDuration :md5sum-) "2aa5b5d494c682527e9e9161e1fa58ac")
(setf (get jsk_topic_tools::PassthroughDuration :datatype-) "jsk_topic_tools/PassthroughDuration")
(setf (get jsk_topic_tools::PassthroughDuration :request) jsk_topic_tools::PassthroughDurationRequest)
(setf (get jsk_topic_tools::PassthroughDuration :response) jsk_topic_tools::PassthroughDurationResponse)

(defmethod jsk_topic_tools::PassthroughDurationRequest
  (:response () (instance jsk_topic_tools::PassthroughDurationResponse :init)))

(setf (get jsk_topic_tools::PassthroughDurationRequest :md5sum-) "2aa5b5d494c682527e9e9161e1fa58ac")
(setf (get jsk_topic_tools::PassthroughDurationRequest :datatype-) "jsk_topic_tools/PassthroughDurationRequest")
(setf (get jsk_topic_tools::PassthroughDurationRequest :definition-)
      "duration duration
---

")

(setf (get jsk_topic_tools::PassthroughDurationResponse :md5sum-) "2aa5b5d494c682527e9e9161e1fa58ac")
(setf (get jsk_topic_tools::PassthroughDurationResponse :datatype-) "jsk_topic_tools/PassthroughDurationResponse")
(setf (get jsk_topic_tools::PassthroughDurationResponse :definition-)
      "duration duration
---

")



(provide :jsk_topic_tools/PassthroughDuration "2aa5b5d494c682527e9e9161e1fa58ac")


