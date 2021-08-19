; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude PolygonStamped.msg.html

(cl:defclass <PolygonStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass PolygonStamped (<PolygonStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<PolygonStamped> is deprecated: use geometry_msgs-msg:PolygonStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PolygonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:header-val is deprecated.  Use geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <PolygonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:polygon-val is deprecated.  Use geometry_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonStamped>) ostream)
  "Serializes a message object of type '<PolygonStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonStamped>) istream)
  "Deserializes a message object of type '<PolygonStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonStamped>)))
  "Returns string type for a message object of type '<PolygonStamped>"
  "geometry_msgs/PolygonStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonStamped)))
  "Returns string type for a message object of type 'PolygonStamped"
  "geometry_msgs/PolygonStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonStamped>)))
  "Returns md5sum for a message object of type '<PolygonStamped>"
  "c6be8f7dc3bee7fe9e8d296070f53340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonStamped)))
  "Returns md5sum for a message object of type 'PolygonStamped"
  "c6be8f7dc3bee7fe9e8d296070f53340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonStamped>)))
  "Returns full string definition for message of type '<PolygonStamped>"
  (cl:format cl:nil "# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonStamped)))
  "Returns full string definition for message of type 'PolygonStamped"
  (cl:format cl:nil "# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonStamped
    (cl:cons ':header (header msg))
    (cl:cons ':polygon (polygon msg))
))
