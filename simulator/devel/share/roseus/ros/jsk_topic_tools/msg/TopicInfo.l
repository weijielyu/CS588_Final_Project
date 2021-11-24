;; Auto-generated. Do not edit!


(when (boundp 'jsk_topic_tools::TopicInfo)
  (if (not (find-package "JSK_TOPIC_TOOLS"))
    (make-package "JSK_TOPIC_TOOLS"))
  (shadow 'TopicInfo (find-package "JSK_TOPIC_TOOLS")))
(unless (find-package "JSK_TOPIC_TOOLS::TOPICINFO")
  (make-package "JSK_TOPIC_TOOLS::TOPICINFO"))

(in-package "ROS")
;;//! \htmlinclude TopicInfo.msg.html


(defclass jsk_topic_tools::TopicInfo
  :super ros::object
  :slots (_topic_name _rate ))

(defmethod jsk_topic_tools::TopicInfo
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:rate __rate) 0.0)
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _rate (float __rate))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; float64 _rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; float64 _rate
       (sys::poke _rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _rate
     (setq _rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jsk_topic_tools::TopicInfo :md5sum-) "78edf14defd72c2fcd29e4fad0165ea9")
(setf (get jsk_topic_tools::TopicInfo :datatype-) "jsk_topic_tools/TopicInfo")
(setf (get jsk_topic_tools::TopicInfo :definition-)
      "string topic_name
float64 rate


")



(provide :jsk_topic_tools/TopicInfo "78edf14defd72c2fcd29e4fad0165ea9")


