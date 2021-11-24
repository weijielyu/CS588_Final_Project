;; Auto-generated. Do not edit!


(when (boundp 'jsk_topic_tools::ChangeTopic)
  (if (not (find-package "JSK_TOPIC_TOOLS"))
    (make-package "JSK_TOPIC_TOOLS"))
  (shadow 'ChangeTopic (find-package "JSK_TOPIC_TOOLS")))
(unless (find-package "JSK_TOPIC_TOOLS::CHANGETOPIC")
  (make-package "JSK_TOPIC_TOOLS::CHANGETOPIC"))
(unless (find-package "JSK_TOPIC_TOOLS::CHANGETOPICREQUEST")
  (make-package "JSK_TOPIC_TOOLS::CHANGETOPICREQUEST"))
(unless (find-package "JSK_TOPIC_TOOLS::CHANGETOPICRESPONSE")
  (make-package "JSK_TOPIC_TOOLS::CHANGETOPICRESPONSE"))

(in-package "ROS")





(defclass jsk_topic_tools::ChangeTopicRequest
  :super ros::object
  :slots (_topic ))

(defmethod jsk_topic_tools::ChangeTopicRequest
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_topic_tools::ChangeTopicResponse
  :super ros::object
  :slots ())

(defmethod jsk_topic_tools::ChangeTopicResponse
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

(defclass jsk_topic_tools::ChangeTopic
  :super ros::object
  :slots ())

(setf (get jsk_topic_tools::ChangeTopic :md5sum-) "d8f94bae31b356b24d0427f80426d0c3")
(setf (get jsk_topic_tools::ChangeTopic :datatype-) "jsk_topic_tools/ChangeTopic")
(setf (get jsk_topic_tools::ChangeTopic :request) jsk_topic_tools::ChangeTopicRequest)
(setf (get jsk_topic_tools::ChangeTopic :response) jsk_topic_tools::ChangeTopicResponse)

(defmethod jsk_topic_tools::ChangeTopicRequest
  (:response () (instance jsk_topic_tools::ChangeTopicResponse :init)))

(setf (get jsk_topic_tools::ChangeTopicRequest :md5sum-) "d8f94bae31b356b24d0427f80426d0c3")
(setf (get jsk_topic_tools::ChangeTopicRequest :datatype-) "jsk_topic_tools/ChangeTopicRequest")
(setf (get jsk_topic_tools::ChangeTopicRequest :definition-)
      "string topic
---

")

(setf (get jsk_topic_tools::ChangeTopicResponse :md5sum-) "d8f94bae31b356b24d0427f80426d0c3")
(setf (get jsk_topic_tools::ChangeTopicResponse :datatype-) "jsk_topic_tools/ChangeTopicResponse")
(setf (get jsk_topic_tools::ChangeTopicResponse :definition-)
      "string topic
---

")



(provide :jsk_topic_tools/ChangeTopic "d8f94bae31b356b24d0427f80426d0c3")


