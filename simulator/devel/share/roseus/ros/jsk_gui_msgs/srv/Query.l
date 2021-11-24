;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::Query)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'Query (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::QUERY")
  (make-package "JSK_GUI_MSGS::QUERY"))
(unless (find-package "JSK_GUI_MSGS::QUERYREQUEST")
  (make-package "JSK_GUI_MSGS::QUERYREQUEST"))
(unless (find-package "JSK_GUI_MSGS::QUERYRESPONSE")
  (make-package "JSK_GUI_MSGS::QUERYRESPONSE"))

(in-package "ROS")





(defclass jsk_gui_msgs::QueryRequest
  :super ros::object
  :slots (_id ))

(defmethod jsk_gui_msgs::QueryRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jsk_gui_msgs::QueryResponse
  :super ros::object
  :slots (_res ))

(defmethod jsk_gui_msgs::QueryResponse
  (:init
   (&key
    ((:res __res) "")
    )
   (send-super :init)
   (setq _res (string __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; string _res
    4 (length _res)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _res
       (write-long (length _res) s) (princ _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_gui_msgs::Query
  :super ros::object
  :slots ())

(setf (get jsk_gui_msgs::Query :md5sum-) "9c540946b387ce7acce975ce4dfac8ad")
(setf (get jsk_gui_msgs::Query :datatype-) "jsk_gui_msgs/Query")
(setf (get jsk_gui_msgs::Query :request) jsk_gui_msgs::QueryRequest)
(setf (get jsk_gui_msgs::Query :response) jsk_gui_msgs::QueryResponse)

(defmethod jsk_gui_msgs::QueryRequest
  (:response () (instance jsk_gui_msgs::QueryResponse :init)))

(setf (get jsk_gui_msgs::QueryRequest :md5sum-) "9c540946b387ce7acce975ce4dfac8ad")
(setf (get jsk_gui_msgs::QueryRequest :datatype-) "jsk_gui_msgs/QueryRequest")
(setf (get jsk_gui_msgs::QueryRequest :definition-)
      "int32 id
---
string res
")

(setf (get jsk_gui_msgs::QueryResponse :md5sum-) "9c540946b387ce7acce975ce4dfac8ad")
(setf (get jsk_gui_msgs::QueryResponse :datatype-) "jsk_gui_msgs/QueryResponse")
(setf (get jsk_gui_msgs::QueryResponse :definition-)
      "int32 id
---
string res
")



(provide :jsk_gui_msgs/Query "9c540946b387ce7acce975ce4dfac8ad")


