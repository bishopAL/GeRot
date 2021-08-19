; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude AccelWithCovarianceStamped.msg.html

(cl:defclass <AccelWithCovarianceStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance)))
)

(cl:defclass AccelWithCovarianceStamped (<AccelWithCovarianceStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelWithCovarianceStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelWithCovarianceStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<AccelWithCovarianceStamped> is deprecated: use geometry_msgs-msg:AccelWithCovarianceStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AccelWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <AccelWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:accel-val is deprecated.  Use geometry_msgs-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelWithCovarianceStamped>) ostream)
  "Serializes a message object of type '<AccelWithCovarianceStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelWithCovarianceStamped>) istream)
  "Deserializes a message object of type '<AccelWithCovarianceStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelWithCovarianceStamped>)))
  "Returns string type for a message object of type '<AccelWithCovarianceStamped>"
  "geometry_msgs/AccelWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelWithCovarianceStamped)))
  "Returns string type for a message object of type 'AccelWithCovarianceStamped"
  "geometry_msgs/AccelWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelWithCovarianceStamped>)))
  "Returns md5sum for a message object of type '<AccelWithCovarianceStamped>"
  "96adb295225031ec8d57fb4251b0a886")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelWithCovarianceStamped)))
  "Returns md5sum for a message object of type 'AccelWithCovarianceStamped"
  "96adb295225031ec8d57fb4251b0a886")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelWithCovarianceStamped>)))
  "Returns full string definition for message of type '<AccelWithCovarianceStamped>"
  (cl:format cl:nil "# This represents an estimated accel with reference coordinate frame and timestamp.~%Header header~%AccelWithCovariance accel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelWithCovarianceStamped)))
  "Returns full string definition for message of type 'AccelWithCovarianceStamped"
  (cl:format cl:nil "# This represents an estimated accel with reference coordinate frame and timestamp.~%Header header~%AccelWithCovariance accel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelWithCovarianceStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelWithCovarianceStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelWithCovarianceStamped
    (cl:cons ':header (header msg))
    (cl:cons ':accel (accel msg))
))
