; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude Gravity.msg.html

(cl:defclass <Gravity> (roslisp-msg-protocol:ros-message)
  ((gravity
    :reader gravity
    :initarg :gravity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Gravity (<Gravity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gravity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gravity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<Gravity> is deprecated: use jsk_gui_msgs-msg:Gravity instead.")))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <Gravity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:gravity-val is deprecated.  Use jsk_gui_msgs-msg:gravity instead.")
  (gravity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gravity>) ostream)
  "Serializes a message object of type '<Gravity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gravity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gravity>) istream)
  "Deserializes a message object of type '<Gravity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gravity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gravity>)))
  "Returns string type for a message object of type '<Gravity>"
  "jsk_gui_msgs/Gravity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gravity)))
  "Returns string type for a message object of type 'Gravity"
  "jsk_gui_msgs/Gravity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gravity>)))
  "Returns md5sum for a message object of type '<Gravity>"
  "86facaf836997cbbc4faee170616f59e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gravity)))
  "Returns md5sum for a message object of type 'Gravity"
  "86facaf836997cbbc4faee170616f59e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gravity>)))
  "Returns full string definition for message of type '<Gravity>"
  (cl:format cl:nil "geometry_msgs/Vector3 gravity~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gravity)))
  "Returns full string definition for message of type 'Gravity"
  (cl:format cl:nil "geometry_msgs/Vector3 gravity~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gravity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gravity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gravity>))
  "Converts a ROS message object to a list"
  (cl:list 'Gravity
    (cl:cons ':gravity (gravity msg))
))
