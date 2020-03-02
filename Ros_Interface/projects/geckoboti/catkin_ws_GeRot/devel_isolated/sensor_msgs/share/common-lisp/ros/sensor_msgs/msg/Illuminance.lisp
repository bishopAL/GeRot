; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude Illuminance.msg.html

(cl:defclass <Illuminance> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (illuminance
    :reader illuminance
    :initarg :illuminance
    :type cl:float
    :initform 0.0)
   (variance
    :reader variance
    :initarg :variance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Illuminance (<Illuminance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Illuminance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Illuminance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<Illuminance> is deprecated: use sensor_msgs-msg:Illuminance instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Illuminance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'illuminance-val :lambda-list '(m))
(cl:defmethod illuminance-val ((m <Illuminance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:illuminance-val is deprecated.  Use sensor_msgs-msg:illuminance instead.")
  (illuminance m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <Illuminance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:variance-val is deprecated.  Use sensor_msgs-msg:variance instead.")
  (variance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Illuminance>) ostream)
  "Serializes a message object of type '<Illuminance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'illuminance))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Illuminance>) istream)
  "Deserializes a message object of type '<Illuminance>"
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
    (cl:setf (cl:slot-value msg 'illuminance) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Illuminance>)))
  "Returns string type for a message object of type '<Illuminance>"
  "sensor_msgs/Illuminance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Illuminance)))
  "Returns string type for a message object of type 'Illuminance"
  "sensor_msgs/Illuminance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Illuminance>)))
  "Returns md5sum for a message object of type '<Illuminance>"
  "8cf5febb0952fca9d650c3d11a81a188")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Illuminance)))
  "Returns md5sum for a message object of type 'Illuminance"
  "8cf5febb0952fca9d650c3d11a81a188")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Illuminance>)))
  "Returns full string definition for message of type '<Illuminance>"
  (cl:format cl:nil " # Single photometric illuminance measurement.  Light should be assumed to be~% # measured along the sensor's x-axis (the area of detection is the y-z plane).~% # The illuminance should have a 0 or positive value and be received with~% # the sensor's +X axis pointing toward the light source.~%~% # Photometric illuminance is the measure of the human eye's sensitivity of the~% # intensity of light encountering or passing through a surface.~%~% # All other Photometric and Radiometric measurements should~% # not use this message.~% # This message cannot represent:~% # Luminous intensity (candela/light source output)~% # Luminance (nits/light output per area)~% # Irradiance (watt/area), etc.~%~% Header header           # timestamp is the time the illuminance was measured~%                         # frame_id is the location and direction of the reading~%~% float64 illuminance     # Measurement of the Photometric Illuminance in Lux.~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Illuminance)))
  "Returns full string definition for message of type 'Illuminance"
  (cl:format cl:nil " # Single photometric illuminance measurement.  Light should be assumed to be~% # measured along the sensor's x-axis (the area of detection is the y-z plane).~% # The illuminance should have a 0 or positive value and be received with~% # the sensor's +X axis pointing toward the light source.~%~% # Photometric illuminance is the measure of the human eye's sensitivity of the~% # intensity of light encountering or passing through a surface.~%~% # All other Photometric and Radiometric measurements should~% # not use this message.~% # This message cannot represent:~% # Luminous intensity (candela/light source output)~% # Luminance (nits/light output per area)~% # Irradiance (watt/area), etc.~%~% Header header           # timestamp is the time the illuminance was measured~%                         # frame_id is the location and direction of the reading~%~% float64 illuminance     # Measurement of the Photometric Illuminance in Lux.~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Illuminance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Illuminance>))
  "Converts a ROS message object to a list"
  (cl:list 'Illuminance
    (cl:cons ':header (header msg))
    (cl:cons ':illuminance (illuminance msg))
    (cl:cons ':variance (variance msg))
))
