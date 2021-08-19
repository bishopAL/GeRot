; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude Vector3Stamped.msg.html

(cl:defclass <Vector3Stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vector
    :reader vector
    :initarg :vector
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Vector3Stamped (<Vector3Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector3Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector3Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<Vector3Stamped> is deprecated: use geometry_msgs-msg:Vector3Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vector3Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <Vector3Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:vector-val is deprecated.  Use geometry_msgs-msg:vector instead.")
  (vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector3Stamped>) ostream)
  "Serializes a message object of type '<Vector3Stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector3Stamped>) istream)
  "Deserializes a message object of type '<Vector3Stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector3Stamped>)))
  "Returns string type for a message object of type '<Vector3Stamped>"
  "geometry_msgs/Vector3Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector3Stamped)))
  "Returns string type for a message object of type 'Vector3Stamped"
  "geometry_msgs/Vector3Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector3Stamped>)))
  "Returns md5sum for a message object of type '<Vector3Stamped>"
  "7b324c7325e683bf02a9b14b01090ec7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector3Stamped)))
  "Returns md5sum for a message object of type 'Vector3Stamped"
  "7b324c7325e683bf02a9b14b01090ec7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector3Stamped>)))
  "Returns full string definition for message of type '<Vector3Stamped>"
  (cl:format cl:nil "# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector3Stamped)))
  "Returns full string definition for message of type 'Vector3Stamped"
  (cl:format cl:nil "# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector3Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector3Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector3Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':vector (vector msg))
))
