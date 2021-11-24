; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude MultiTouch.msg.html

(cl:defclass <MultiTouch> (roslisp-msg-protocol:ros-message)
  ((touches
    :reader touches
    :initarg :touches
    :type (cl:vector jsk_gui_msgs-msg:Touch)
   :initform (cl:make-array 0 :element-type 'jsk_gui_msgs-msg:Touch :initial-element (cl:make-instance 'jsk_gui_msgs-msg:Touch))))
)

(cl:defclass MultiTouch (<MultiTouch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiTouch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiTouch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<MultiTouch> is deprecated: use jsk_gui_msgs-msg:MultiTouch instead.")))

(cl:ensure-generic-function 'touches-val :lambda-list '(m))
(cl:defmethod touches-val ((m <MultiTouch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:touches-val is deprecated.  Use jsk_gui_msgs-msg:touches instead.")
  (touches m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiTouch>) ostream)
  "Serializes a message object of type '<MultiTouch>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'touches))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'touches))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiTouch>) istream)
  "Deserializes a message object of type '<MultiTouch>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'touches) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'touches)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jsk_gui_msgs-msg:Touch))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiTouch>)))
  "Returns string type for a message object of type '<MultiTouch>"
  "jsk_gui_msgs/MultiTouch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiTouch)))
  "Returns string type for a message object of type 'MultiTouch"
  "jsk_gui_msgs/MultiTouch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiTouch>)))
  "Returns md5sum for a message object of type '<MultiTouch>"
  "9f4a309588ef669e69a71aa5601ea65e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiTouch)))
  "Returns md5sum for a message object of type 'MultiTouch"
  "9f4a309588ef669e69a71aa5601ea65e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiTouch>)))
  "Returns full string definition for message of type '<MultiTouch>"
  (cl:format cl:nil "Touch[] touches~%================================================================================~%MSG: jsk_gui_msgs/Touch~%# finger_id~%int64 finger_id~%# touch point(screen point)~%float64 x~%float64 y~%# based image size (usually not needed)~%int64 image_width~%int64 image_height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiTouch)))
  "Returns full string definition for message of type 'MultiTouch"
  (cl:format cl:nil "Touch[] touches~%================================================================================~%MSG: jsk_gui_msgs/Touch~%# finger_id~%int64 finger_id~%# touch point(screen point)~%float64 x~%float64 y~%# based image size (usually not needed)~%int64 image_width~%int64 image_height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiTouch>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'touches) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiTouch>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiTouch
    (cl:cons ':touches (touches msg))
))
