; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude RelativeHumidity.msg.html

(cl:defclass <RelativeHumidity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (relative_humidity
    :reader relative_humidity
    :initarg :relative_humidity
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0))
)

(cl:defclass RelativeHumidity (<RelativeHumidity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelativeHumidity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelativeHumidity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<RelativeHumidity> is deprecated: use sensor_msgs-msg:RelativeHumidity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RelativeHumidity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'relative_humidity-val :lambda-list '(m))
(cl:defmethod relative_humidity-val ((m <RelativeHumidity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:relative_humidity-val is deprecated.  Use sensor_msgs-msg:relative_humidity instead.")
  (relative_humidity m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <RelativeHumidity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:variance-val is deprecated.  Use sensor_msgs-msg:variance instead.")
  (variance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelativeHumidity>) ostream)
  "Serializes a message object of type '<RelativeHumidity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'relative_humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelativeHumidity>) istream)
  "Deserializes a message object of type '<RelativeHumidity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_humidity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelativeHumidity>)))
  "Returns string type for a message object of type '<RelativeHumidity>"
  "sensor_msgs/RelativeHumidity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelativeHumidity)))
  "Returns string type for a message object of type 'RelativeHumidity"
  "sensor_msgs/RelativeHumidity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelativeHumidity>)))
  "Returns md5sum for a message object of type '<RelativeHumidity>"
  "8730015b05955b7e992ce29a2678d90f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelativeHumidity)))
  "Returns md5sum for a message object of type 'RelativeHumidity"
  "8730015b05955b7e992ce29a2678d90f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelativeHumidity>)))
  "Returns full string definition for message of type '<RelativeHumidity>"
  (cl:format cl:nil " # Single reading from a relative humidity sensor.  Defines the ratio of partial~% # pressure of water vapor to the saturated vapor pressure at a temperature.~%~% Header header             # timestamp of the measurement~%                           # frame_id is the location of the humidity sensor~%~% float64 relative_humidity # Expression of the relative humidity~%                           # from 0.0 to 1.0.~%                           # 0.0 is no partial pressure of water vapor~%                           # 1.0 represents partial pressure of saturation~%~% float64 variance          # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelativeHumidity)))
  "Returns full string definition for message of type 'RelativeHumidity"
  (cl:format cl:nil " # Single reading from a relative humidity sensor.  Defines the ratio of partial~% # pressure of water vapor to the saturated vapor pressure at a temperature.~%~% Header header             # timestamp of the measurement~%                           # frame_id is the location of the humidity sensor~%~% float64 relative_humidity # Expression of the relative humidity~%                           # from 0.0 to 1.0.~%                           # 0.0 is no partial pressure of water vapor~%                           # 1.0 represents partial pressure of saturation~%~% float64 variance          # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelativeHumidity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelativeHumidity>))
  "Converts a ROS message object to a list"
  (cl:list 'RelativeHumidity
    (cl:cons ':header (header msg))
    (cl:cons ':relative_humidity (relative_humidity msg))
    (cl:cons ':variance (variance msg))
))
