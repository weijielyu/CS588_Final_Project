;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::VoiceMessage)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'VoiceMessage (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::VOICEMESSAGE")
  (make-package "JSK_GUI_MSGS::VOICEMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude VoiceMessage.msg.html


(defclass jsk_gui_msgs::VoiceMessage
  :super ros::object
  :slots (_texts ))

(defmethod jsk_gui_msgs::VoiceMessage
  (:init
   (&key
    ((:texts __texts) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _texts __texts)
   self)
  (:texts
   (&optional __texts)
   (if __texts (setq _texts __texts)) _texts)
  (:serialization-length
   ()
   (+
    ;; string[] _texts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _texts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _texts
     (write-long (length _texts) s)
     (dolist (elem _texts)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _texts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _texts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _texts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::VoiceMessage :md5sum-) "8d7dcfb3b46640ccf02177a3f0cf9530")
(setf (get jsk_gui_msgs::VoiceMessage :datatype-) "jsk_gui_msgs/VoiceMessage")
(setf (get jsk_gui_msgs::VoiceMessage :definition-)
      "string[] texts
")



(provide :jsk_gui_msgs/VoiceMessage "8d7dcfb3b46640ccf02177a3f0cf9530")


