; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude InertiaStamped.msg.html

(cl:defclass <InertiaStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (inertia
    :reader inertia
    :initarg :inertia
    :type geometry_msgs-msg:Inertia
    :initform (cl:make-instance 'geometry_msgs-msg:Inertia)))
)

(cl:defclass InertiaStamped (<InertiaStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InertiaStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InertiaStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<InertiaStamped> is deprecated: use geometry_msgs-msg:InertiaStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InertiaStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'inertia-val :lambda-list '(m))
(cl:defmethod inertia-val ((m <InertiaStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:inertia-val is deprecated.  Use geometry_msgs-msg:inertia instead.")
  (inertia m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InertiaStamped>) ostream)
  "Serializes a message object of type '<InertiaStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inertia) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InertiaStamped>) istream)
  "Deserializes a message object of type '<InertiaStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inertia) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InertiaStamped>)))
  "Returns string type for a message object of type '<InertiaStamped>"
  "geometry_msgs/InertiaStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InertiaStamped)))
  "Returns string type for a message object of type 'InertiaStamped"
  "geometry_msgs/InertiaStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InertiaStamped>)))
  "Returns md5sum for a message object of type '<InertiaStamped>"
  "ddee48caeab5a966c5e8d166654a9ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InertiaStamped)))
  "Returns md5sum for a message object of type 'InertiaStamped"
  "ddee48caeab5a966c5e8d166654a9ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InertiaStamped>)))
  "Returns full string definition for message of type '<InertiaStamped>"
  (cl:format cl:nil "Header header~%Inertia inertia~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Inertia~%# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InertiaStamped)))
  "Returns full string definition for message of type 'InertiaStamped"
  (cl:format cl:nil "Header header~%Inertia inertia~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Inertia~%# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InertiaStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inertia))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InertiaStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'InertiaStamped
    (cl:cons ':header (header msg))
    (cl:cons ':inertia (inertia msg))
))
