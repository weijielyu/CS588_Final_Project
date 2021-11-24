;; Auto-generated. Do not edit!


(when (boundp 'jsk_topic_tools::Update)
  (if (not (find-package "JSK_TOPIC_TOOLS"))
    (make-package "JSK_TOPIC_TOOLS"))
  (shadow 'Update (find-package "JSK_TOPIC_TOOLS")))
(unless (find-package "JSK_TOPIC_TOOLS::UPDATE")
  (make-package "JSK_TOPIC_TOOLS::UPDATE"))
(unless (find-package "JSK_TOPIC_TOOLS::UPDATEREQUEST")
  (make-package "JSK_TOPIC_TOOLS::UPDATEREQUEST"))
(unless (find-package "JSK_TOPIC_TOOLS::UPDATERESPONSE")
  (make-package "JSK_TOPIC_TOOLS::UPDATERESPONSE"))

(in-package "ROS")





(defclass jsk_topic_tools::UpdateRequest
  :super ros::object
  :slots (_topic_name _periodic _periodic_rate ))

(defmethod jsk_topic_tools::UpdateRequest
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:periodic __periodic) nil)
    ((:periodic_rate __periodic_rate) (instance ros::time :init))
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _periodic __periodic)
   (setq _periodic_rate __periodic_rate)
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:periodic
   (&optional (__periodic :null))
   (if (not (eq __periodic :null)) (setq _periodic __periodic)) _periodic)
  (:periodic_rate
   (&optional __periodic_rate)
   (if __periodic_rate (setq _periodic_rate __periodic_rate)) _periodic_rate)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; bool _periodic
    1
    ;; duration _periodic_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; bool _periodic
       (if _periodic (write-byte -1 s) (write-byte 0 s))
     ;; duration _periodic_rate
       (write-long (send _periodic_rate :sec) s) (write-long (send _periodic_rate :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _periodic
     (setq _periodic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _periodic_rate
     (send _periodic_rate :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _periodic_rate :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jsk_topic_tools::UpdateResponse
  :super ros::object
  :slots (_rate ))

(defmethod jsk_topic_tools::UpdateResponse
  (:init
   (&key
    ((:rate __rate) 0.0)
    )
   (send-super :init)
   (setq _rate (float __rate))
   self)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; float64 _rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rate
       (sys::poke _rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rate
     (setq _rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jsk_topic_tools::Update
  :super ros::object
  :slots ())

(setf (get jsk_topic_tools::Update :md5sum-) "ace79f60f838c917f96ff83267699173")
(setf (get jsk_topic_tools::Update :datatype-) "jsk_topic_tools/Update")
(setf (get jsk_topic_tools::Update :request) jsk_topic_tools::UpdateRequest)
(setf (get jsk_topic_tools::Update :response) jsk_topic_tools::UpdateResponse)

(defmethod jsk_topic_tools::UpdateRequest
  (:response () (instance jsk_topic_tools::UpdateResponse :init)))

(setf (get jsk_topic_tools::UpdateRequest :md5sum-) "ace79f60f838c917f96ff83267699173")
(setf (get jsk_topic_tools::UpdateRequest :datatype-) "jsk_topic_tools/UpdateRequest")
(setf (get jsk_topic_tools::UpdateRequest :definition-)
      "string topic_name
bool periodic  # when true is set, periodic publish starts. when false, it stops. do nothing when this is empty.
duration periodic_rate # when periodic is true, periodic publish starts at this rate.
---
float64 rate


")

(setf (get jsk_topic_tools::UpdateResponse :md5sum-) "ace79f60f838c917f96ff83267699173")
(setf (get jsk_topic_tools::UpdateResponse :datatype-) "jsk_topic_tools/UpdateResponse")
(setf (get jsk_topic_tools::UpdateResponse :definition-)
      "string topic_name
bool periodic  # when true is set, periodic publish starts. when false, it stops. do nothing when this is empty.
duration periodic_rate # when periodic is true, periodic publish starts at this rate.
---
float64 rate


")



(provide :jsk_topic_tools/Update "ace79f60f838c917f96ff83267699173")


