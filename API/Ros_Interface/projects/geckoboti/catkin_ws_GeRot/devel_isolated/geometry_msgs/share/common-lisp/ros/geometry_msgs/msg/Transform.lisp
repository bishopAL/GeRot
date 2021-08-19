; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude Transform.msg.html

(cl:defclass <Transform> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass Transform (<Transform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<Transform> is deprecated: use geometry_msgs-msg:Transform instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:translation-val is deprecated.  Use geometry_msgs-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:rotation-val is deprecated.  Use geometry_msgs-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transform>) ostream)
  "Serializes a message object of type '<Transform>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transform>) istream)
  "Deserializes a message object of type '<Transform>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transform>)))
  "Returns string type for a message object of type '<Transform>"
  "geometry_msgs/Transform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transform)))
  "Returns string type for a message object of type 'Transform"
  "geometry_msgs/Transform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transform>)))
  "Returns md5sum for a message object of type '<Transform>"
  "ac9eff44abf714214112b05d54a3cf9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transform)))
  "Returns md5sum for a message object of type 'Transform"
  "ac9eff44abf714214112b05d54a3cf9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transform>)))
  "Returns full string definition for message of type '<Transform>"
  (cl:format cl:nil "# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transform)))
  "Returns full string definition for message of type 'Transform"
  (cl:format cl:nil "# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transform>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transform>))
  "Converts a ROS message object to a list"
  (cl:list 'Transform
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
