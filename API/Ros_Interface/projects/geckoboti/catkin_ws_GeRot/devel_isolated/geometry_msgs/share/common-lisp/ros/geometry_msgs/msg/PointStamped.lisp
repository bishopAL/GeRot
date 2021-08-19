; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude PointStamped.msg.html

(cl:defclass <PointStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PointStamped (<PointStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<PointStamped> is deprecated: use geometry_msgs-msg:PointStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <PointStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:point-val is deprecated.  Use geometry_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointStamped>) ostream)
  "Serializes a message object of type '<PointStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointStamped>) istream)
  "Deserializes a message object of type '<PointStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointStamped>)))
  "Returns string type for a message object of type '<PointStamped>"
  "geometry_msgs/PointStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointStamped)))
  "Returns string type for a message object of type 'PointStamped"
  "geometry_msgs/PointStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointStamped>)))
  "Returns md5sum for a message object of type '<PointStamped>"
  "c63aecb41bfdfd6b7e1fac37c7cbe7bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointStamped)))
  "Returns md5sum for a message object of type 'PointStamped"
  "c63aecb41bfdfd6b7e1fac37c7cbe7bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointStamped>)))
  "Returns full string definition for message of type '<PointStamped>"
  (cl:format cl:nil "# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointStamped)))
  "Returns full string definition for message of type 'PointStamped"
  (cl:format cl:nil "# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PointStamped
    (cl:cons ':header (header msg))
    (cl:cons ':point (point msg))
))
