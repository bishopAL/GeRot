; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude QuaternionStamped.msg.html

(cl:defclass <QuaternionStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass QuaternionStamped (<QuaternionStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuaternionStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuaternionStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<QuaternionStamped> is deprecated: use geometry_msgs-msg:QuaternionStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuaternionStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <QuaternionStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:quaternion-val is deprecated.  Use geometry_msgs-msg:quaternion instead.")
  (quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuaternionStamped>) ostream)
  "Serializes a message object of type '<QuaternionStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuaternionStamped>) istream)
  "Deserializes a message object of type '<QuaternionStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuaternionStamped>)))
  "Returns string type for a message object of type '<QuaternionStamped>"
  "geometry_msgs/QuaternionStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuaternionStamped)))
  "Returns string type for a message object of type 'QuaternionStamped"
  "geometry_msgs/QuaternionStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuaternionStamped>)))
  "Returns md5sum for a message object of type '<QuaternionStamped>"
  "e57f1e547e0e1fd13504588ffc8334e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuaternionStamped)))
  "Returns md5sum for a message object of type 'QuaternionStamped"
  "e57f1e547e0e1fd13504588ffc8334e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuaternionStamped>)))
  "Returns full string definition for message of type '<QuaternionStamped>"
  (cl:format cl:nil "# This represents an orientation with reference coordinate frame and timestamp.~%~%Header header~%Quaternion quaternion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuaternionStamped)))
  "Returns full string definition for message of type 'QuaternionStamped"
  (cl:format cl:nil "# This represents an orientation with reference coordinate frame and timestamp.~%~%Header header~%Quaternion quaternion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuaternionStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuaternionStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'QuaternionStamped
    (cl:cons ':header (header msg))
    (cl:cons ':quaternion (quaternion msg))
))
