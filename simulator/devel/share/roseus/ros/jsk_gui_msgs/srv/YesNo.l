;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::YesNo)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'YesNo (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::YESNO")
  (make-package "JSK_GUI_MSGS::YESNO"))
(unless (find-package "JSK_GUI_MSGS::YESNOREQUEST")
  (make-package "JSK_GUI_MSGS::YESNOREQUEST"))
(unless (find-package "JSK_GUI_MSGS::YESNORESPONSE")
  (make-package "JSK_GUI_MSGS::YESNORESPONSE"))

(in-package "ROS")





(defclass jsk_gui_msgs::YesNoRequest
  :super ros::object
  :slots (_message ))

(defmethod jsk_gui_msgs::YesNoRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_gui_msgs::YesNoResponse
  :super ros::object
  :slots (_yes ))

(defmethod jsk_gui_msgs::YesNoResponse
  (:init
   (&key
    ((:yes __yes) nil)
    )
   (send-super :init)
   (setq _yes __yes)
   self)
  (:yes
   (&optional (__yes :null))
   (if (not (eq __yes :null)) (setq _yes __yes)) _yes)
  (:serialization-length
   ()
   (+
    ;; bool _yes
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _yes
       (if _yes (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _yes
     (setq _yes (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jsk_gui_msgs::YesNo
  :super ros::object
  :slots ())

(setf (get jsk_gui_msgs::YesNo :md5sum-) "3e598b4f1452111e6b9ac5c2ccf2a61b")
(setf (get jsk_gui_msgs::YesNo :datatype-) "jsk_gui_msgs/YesNo")
(setf (get jsk_gui_msgs::YesNo :request) jsk_gui_msgs::YesNoRequest)
(setf (get jsk_gui_msgs::YesNo :response) jsk_gui_msgs::YesNoResponse)

(defmethod jsk_gui_msgs::YesNoRequest
  (:response () (instance jsk_gui_msgs::YesNoResponse :init)))

(setf (get jsk_gui_msgs::YesNoRequest :md5sum-) "3e598b4f1452111e6b9ac5c2ccf2a61b")
(setf (get jsk_gui_msgs::YesNoRequest :datatype-) "jsk_gui_msgs/YesNoRequest")
(setf (get jsk_gui_msgs::YesNoRequest :definition-)
      "string message
---
bool yes

")

(setf (get jsk_gui_msgs::YesNoResponse :md5sum-) "3e598b4f1452111e6b9ac5c2ccf2a61b")
(setf (get jsk_gui_msgs::YesNoResponse :datatype-) "jsk_gui_msgs/YesNoResponse")
(setf (get jsk_gui_msgs::YesNoResponse :definition-)
      "string message
---
bool yes

")



(provide :jsk_gui_msgs/YesNo "3e598b4f1452111e6b9ac5c2ccf2a61b")


