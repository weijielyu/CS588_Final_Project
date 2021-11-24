;; Auto-generated. Do not edit!


(when (boundp 'jsk_topic_tools::List)
  (if (not (find-package "JSK_TOPIC_TOOLS"))
    (make-package "JSK_TOPIC_TOOLS"))
  (shadow 'List (find-package "JSK_TOPIC_TOOLS")))
(unless (find-package "JSK_TOPIC_TOOLS::LIST")
  (make-package "JSK_TOPIC_TOOLS::LIST"))
(unless (find-package "JSK_TOPIC_TOOLS::LISTREQUEST")
  (make-package "JSK_TOPIC_TOOLS::LISTREQUEST"))
(unless (find-package "JSK_TOPIC_TOOLS::LISTRESPONSE")
  (make-package "JSK_TOPIC_TOOLS::LISTRESPONSE"))

(in-package "ROS")





(defclass jsk_topic_tools::ListRequest
  :super ros::object
  :slots ())

(defmethod jsk_topic_tools::ListRequest
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

(defclass jsk_topic_tools::ListResponse
  :super ros::object
  :slots (_topic_names ))

(defmethod jsk_topic_tools::ListResponse
  (:init
   (&key
    ((:topic_names __topic_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _topic_names __topic_names)
   self)
  (:topic_names
   (&optional __topic_names)
   (if __topic_names (setq _topic_names __topic_names)) _topic_names)
  (:serialization-length
   ()
   (+
    ;; string[] _topic_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topic_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _topic_names
     (write-long (length _topic_names) s)
     (dolist (elem _topic_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _topic_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topic_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topic_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass jsk_topic_tools::List
  :super ros::object
  :slots ())

(setf (get jsk_topic_tools::List :md5sum-) "f88f7a076bf16dde010b2480af40dcdb")
(setf (get jsk_topic_tools::List :datatype-) "jsk_topic_tools/List")
(setf (get jsk_topic_tools::List :request) jsk_topic_tools::ListRequest)
(setf (get jsk_topic_tools::List :response) jsk_topic_tools::ListResponse)

(defmethod jsk_topic_tools::ListRequest
  (:response () (instance jsk_topic_tools::ListResponse :init)))

(setf (get jsk_topic_tools::ListRequest :md5sum-) "f88f7a076bf16dde010b2480af40dcdb")
(setf (get jsk_topic_tools::ListRequest :datatype-) "jsk_topic_tools/ListRequest")
(setf (get jsk_topic_tools::ListRequest :definition-)
      "---
string[] topic_names

")

(setf (get jsk_topic_tools::ListResponse :md5sum-) "f88f7a076bf16dde010b2480af40dcdb")
(setf (get jsk_topic_tools::ListResponse :datatype-) "jsk_topic_tools/ListResponse")
(setf (get jsk_topic_tools::ListResponse :definition-)
      "---
string[] topic_names

")



(provide :jsk_topic_tools/List "f88f7a076bf16dde010b2480af40dcdb")


