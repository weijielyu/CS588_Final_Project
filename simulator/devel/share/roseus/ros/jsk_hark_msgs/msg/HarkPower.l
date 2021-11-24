;; Auto-generated. Do not edit!


(when (boundp 'jsk_hark_msgs::HarkPower)
  (if (not (find-package "JSK_HARK_MSGS"))
    (make-package "JSK_HARK_MSGS"))
  (shadow 'HarkPower (find-package "JSK_HARK_MSGS")))
(unless (find-package "JSK_HARK_MSGS::HARKPOWER")
  (make-package "JSK_HARK_MSGS::HARKPOWER"))

(in-package "ROS")
;;//! \htmlinclude HarkPower.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_hark_msgs::HarkPower
  :super ros::object
  :slots (_header _count _directions _data_bytes _powers ))

(defmethod jsk_hark_msgs::HarkPower
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    ((:directions __directions) 0)
    ((:data_bytes __data_bytes) 0)
    ((:powers __powers) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (round __count))
   (setq _directions (round __directions))
   (setq _data_bytes (round __data_bytes))
   (setq _powers __powers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:directions
   (&optional __directions)
   (if __directions (setq _directions __directions)) _directions)
  (:data_bytes
   (&optional __data_bytes)
   (if __data_bytes (setq _data_bytes __data_bytes)) _data_bytes)
  (:powers
   (&optional __powers)
   (if __powers (setq _powers __powers)) _powers)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _count
    4
    ;; int32 _directions
    4
    ;; int32 _data_bytes
    4
    ;; float32[] _powers
    (* 4    (length _powers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _count
       (write-long _count s)
     ;; int32 _directions
       (write-long _directions s)
     ;; int32 _data_bytes
       (write-long _data_bytes s)
     ;; float32[] _powers
     (write-long (length _powers) s)
     (dotimes (i (length _powers))
       (sys::poke (elt _powers i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _directions
     (setq _directions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data_bytes
     (setq _data_bytes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _powers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _powers (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _powers i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get jsk_hark_msgs::HarkPower :md5sum-) "251c13d7a8be27144a2b24c6f53df705")
(setf (get jsk_hark_msgs::HarkPower :datatype-) "jsk_hark_msgs/HarkPower")
(setf (get jsk_hark_msgs::HarkPower :definition-)
      "Header header
int32  count
int32  directions
int32  data_bytes
float32[] powers

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :jsk_hark_msgs/HarkPower "251c13d7a8be27144a2b24c6f53df705")


