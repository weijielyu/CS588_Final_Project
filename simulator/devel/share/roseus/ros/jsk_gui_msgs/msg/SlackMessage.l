;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::SlackMessage)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'SlackMessage (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::SLACKMESSAGE")
  (make-package "JSK_GUI_MSGS::SLACKMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude SlackMessage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass jsk_gui_msgs::SlackMessage
  :super ros::object
  :slots (_channel _text _image ))

(defmethod jsk_gui_msgs::SlackMessage
  (:init
   (&key
    ((:channel __channel) "")
    ((:text __text) "")
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _channel (string __channel))
   (setq _text (string __text))
   (setq _image __image)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; string _channel
    4 (length _channel)
    ;; string _text
    4 (length _text)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _channel
       (write-long (length _channel) s) (princ _channel s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _channel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _channel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get jsk_gui_msgs::SlackMessage :md5sum-) "b68991d3b722980bd0f3eeeeee52635b")
(setf (get jsk_gui_msgs::SlackMessage :datatype-) "jsk_gui_msgs/SlackMessage")
(setf (get jsk_gui_msgs::SlackMessage :definition-)
      "string channel           # channel to post (ex. @user, #general)
string text              # text to post
sensor_msgs/Image image  # image to upload

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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



(provide :jsk_gui_msgs/SlackMessage "b68991d3b722980bd0f3eeeeee52635b")


