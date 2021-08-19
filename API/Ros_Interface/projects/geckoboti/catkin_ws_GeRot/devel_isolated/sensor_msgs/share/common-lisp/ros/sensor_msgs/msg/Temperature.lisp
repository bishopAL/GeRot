; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude Temperature.msg.html

(cl:defclass <Temperature> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Temperature (<Temperature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Temperature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Temperature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<Temperature> is deprecated: use sensor_msgs-msg:Temperature instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Temperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <Temperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:temperature-val is deprecated.  Use sensor_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <Temperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:variance-val is deprecated.  Use sensor_msgs-msg:variance instead.")
  (variance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Temperature>) ostream)
  "Serializes a message object of type '<Temperature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Temperature>) istream)
  "Deserializes a message object of type '<Temperature>"
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
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Temperature>)))
  "Returns string type for a message object of type '<Temperature>"
  "sensor_msgs/Temperature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Temperature)))
  "Returns string type for a message object of type 'Temperature"
  "sensor_msgs/Temperature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Temperature>)))
  "Returns md5sum for a message object of type '<Temperature>"
  "ff71b307acdbe7c871a5a6d7ed359100")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Temperature)))
  "Returns md5sum for a message object of type 'Temperature"
  "ff71b307acdbe7c871a5a6d7ed359100")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Temperature>)))
  "Returns full string definition for message of type '<Temperature>"
  (cl:format cl:nil " # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Temperature)))
  "Returns full string definition for message of type 'Temperature"
  (cl:format cl:nil " # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Temperature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Temperature>))
  "Converts a ROS message object to a list"
  (cl:list 'Temperature
    (cl:cons ':header (header msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':variance (variance msg))
))
