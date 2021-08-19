; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude Wrench.msg.html

(cl:defclass <Wrench> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Wrench (<Wrench>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wrench>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wrench)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<Wrench> is deprecated: use geometry_msgs-msg:Wrench instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Wrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:force-val is deprecated.  Use geometry_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <Wrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:torque-val is deprecated.  Use geometry_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wrench>) ostream)
  "Serializes a message object of type '<Wrench>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wrench>) istream)
  "Deserializes a message object of type '<Wrench>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wrench>)))
  "Returns string type for a message object of type '<Wrench>"
  "geometry_msgs/Wrench")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wrench)))
  "Returns string type for a message object of type 'Wrench"
  "geometry_msgs/Wrench")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wrench>)))
  "Returns md5sum for a message object of type '<Wrench>"
  "4f539cf138b23283b520fd271b567936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wrench)))
  "Returns md5sum for a message object of type 'Wrench"
  "4f539cf138b23283b520fd271b567936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wrench>)))
  "Returns full string definition for message of type '<Wrench>"
  (cl:format cl:nil "# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wrench)))
  "Returns full string definition for message of type 'Wrench"
  (cl:format cl:nil "# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wrench>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wrench>))
  "Converts a ROS message object to a list"
  (cl:list 'Wrench
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
