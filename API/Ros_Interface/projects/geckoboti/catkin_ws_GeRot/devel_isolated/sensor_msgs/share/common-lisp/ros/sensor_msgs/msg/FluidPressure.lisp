; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude FluidPressure.msg.html

(cl:defclass <FluidPressure> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fluid_pressure
    :reader fluid_pressure
    :initarg :fluid_pressure
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0))
)

(cl:defclass FluidPressure (<FluidPressure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FluidPressure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FluidPressure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<FluidPressure> is deprecated: use sensor_msgs-msg:FluidPressure instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FluidPressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fluid_pressure-val :lambda-list '(m))
(cl:defmethod fluid_pressure-val ((m <FluidPressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:fluid_pressure-val is deprecated.  Use sensor_msgs-msg:fluid_pressure instead.")
  (fluid_pressure m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <FluidPressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:variance-val is deprecated.  Use sensor_msgs-msg:variance instead.")
  (variance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FluidPressure>) ostream)
  "Serializes a message object of type '<FluidPressure>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fluid_pressure))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FluidPressure>) istream)
  "Deserializes a message object of type '<FluidPressure>"
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
    (cl:setf (cl:slot-value msg 'fluid_pressure) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FluidPressure>)))
  "Returns string type for a message object of type '<FluidPressure>"
  "sensor_msgs/FluidPressure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FluidPressure)))
  "Returns string type for a message object of type 'FluidPressure"
  "sensor_msgs/FluidPressure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FluidPressure>)))
  "Returns md5sum for a message object of type '<FluidPressure>"
  "804dc5cea1c5306d6a2eb80b9833befe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FluidPressure)))
  "Returns md5sum for a message object of type 'FluidPressure"
  "804dc5cea1c5306d6a2eb80b9833befe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FluidPressure>)))
  "Returns full string definition for message of type '<FluidPressure>"
  (cl:format cl:nil " # Single pressure reading.  This message is appropriate for measuring the~% # pressure inside of a fluid (air, water, etc).  This also includes~% # atmospheric or barometric pressure.~%~% # This message is not appropriate for force/pressure contact sensors.~%~% Header header           # timestamp of the measurement~%                         # frame_id is the location of the pressure sensor~%~% float64 fluid_pressure  # Absolute pressure reading in Pascals.~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FluidPressure)))
  "Returns full string definition for message of type 'FluidPressure"
  (cl:format cl:nil " # Single pressure reading.  This message is appropriate for measuring the~% # pressure inside of a fluid (air, water, etc).  This also includes~% # atmospheric or barometric pressure.~%~% # This message is not appropriate for force/pressure contact sensors.~%~% Header header           # timestamp of the measurement~%                         # frame_id is the location of the pressure sensor~%~% float64 fluid_pressure  # Absolute pressure reading in Pascals.~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FluidPressure>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FluidPressure>))
  "Converts a ROS message object to a list"
  (cl:list 'FluidPressure
    (cl:cons ':header (header msg))
    (cl:cons ':fluid_pressure (fluid_pressure msg))
    (cl:cons ':variance (variance msg))
))
