; Auto-generated. Do not edit!


(cl:in-package jsk_gui_msgs-msg)


;//! \htmlinclude MagneticField.msg.html

(cl:defclass <MagneticField> (roslisp-msg-protocol:ros-message)
  ((magneticfield
    :reader magneticfield
    :initarg :magneticfield
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass MagneticField (<MagneticField>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticField>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticField)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_gui_msgs-msg:<MagneticField> is deprecated: use jsk_gui_msgs-msg:MagneticField instead.")))

(cl:ensure-generic-function 'magneticfield-val :lambda-list '(m))
(cl:defmethod magneticfield-val ((m <MagneticField>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_gui_msgs-msg:magneticfield-val is deprecated.  Use jsk_gui_msgs-msg:magneticfield instead.")
  (magneticfield m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticField>) ostream)
  "Serializes a message object of type '<MagneticField>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magneticfield) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticField>) istream)
  "Deserializes a message object of type '<MagneticField>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magneticfield) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticField>)))
  "Returns string type for a message object of type '<MagneticField>"
  "jsk_gui_msgs/MagneticField")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticField)))
  "Returns string type for a message object of type 'MagneticField"
  "jsk_gui_msgs/MagneticField")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticField>)))
  "Returns md5sum for a message object of type '<MagneticField>"
  "a924df7c82a527d1b76508ed8354604b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticField)))
  "Returns md5sum for a message object of type 'MagneticField"
  "a924df7c82a527d1b76508ed8354604b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticField>)))
  "Returns full string definition for message of type '<MagneticField>"
  (cl:format cl:nil "geometry_msgs/Vector3 magneticfield~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticField)))
  "Returns full string definition for message of type 'MagneticField"
  (cl:format cl:nil "geometry_msgs/Vector3 magneticfield~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticField>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magneticfield))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticField>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticField
    (cl:cons ':magneticfield (magneticfield msg))
))
