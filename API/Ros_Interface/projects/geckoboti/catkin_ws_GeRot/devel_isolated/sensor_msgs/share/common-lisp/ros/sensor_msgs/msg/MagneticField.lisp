; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude MagneticField.msg.html

(cl:defclass <MagneticField> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (magnetic_field
    :reader magnetic_field
    :initarg :magnetic_field
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (magnetic_field_covariance
    :reader magnetic_field_covariance
    :initarg :magnetic_field_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MagneticField (<MagneticField>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticField>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticField)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<MagneticField> is deprecated: use sensor_msgs-msg:MagneticField instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagneticField>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:header-val is deprecated.  Use sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'magnetic_field-val :lambda-list '(m))
(cl:defmethod magnetic_field-val ((m <MagneticField>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:magnetic_field-val is deprecated.  Use sensor_msgs-msg:magnetic_field instead.")
  (magnetic_field m))

(cl:ensure-generic-function 'magnetic_field_covariance-val :lambda-list '(m))
(cl:defmethod magnetic_field_covariance-val ((m <MagneticField>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:magnetic_field_covariance-val is deprecated.  Use sensor_msgs-msg:magnetic_field_covariance instead.")
  (magnetic_field_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticField>) ostream)
  "Serializes a message object of type '<MagneticField>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magnetic_field) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'magnetic_field_covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticField>) istream)
  "Deserializes a message object of type '<MagneticField>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magnetic_field) istream)
  (cl:setf (cl:slot-value msg 'magnetic_field_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'magnetic_field_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticField>)))
  "Returns string type for a message object of type '<MagneticField>"
  "sensor_msgs/MagneticField")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticField)))
  "Returns string type for a message object of type 'MagneticField"
  "sensor_msgs/MagneticField")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticField>)))
  "Returns md5sum for a message object of type '<MagneticField>"
  "2f3b0b43eed0c9501de0fa3ff89a45aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticField)))
  "Returns md5sum for a message object of type 'MagneticField"
  "2f3b0b43eed0c9501de0fa3ff89a45aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticField>)))
  "Returns full string definition for message of type '<MagneticField>"
  (cl:format cl:nil " # Measurement of the Magnetic Field vector at a specific location.~%~% # If the covariance of the measurement is known, it should be filled in~% # (if all you know is the variance of each measurement, e.g. from the datasheet,~% #just put those along the diagonal)~% # A covariance matrix of all zeros will be interpreted as \"covariance unknown\",~% # and to use the data a covariance will have to be assumed or gotten from some~% # other source~%~%~% Header header                        # timestamp is the time the~%                                      # field was measured~%                                      # frame_id is the location and orientation~%                                      # of the field measurement~%~% geometry_msgs/Vector3 magnetic_field # x, y, and z components of the~%                                      # field vector in Tesla~%                                      # If your sensor does not output 3 axes,~%                                      # put NaNs in the components not reported.~%~% float64[9] magnetic_field_covariance # Row major about x, y, z axes~%                                      # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticField)))
  "Returns full string definition for message of type 'MagneticField"
  (cl:format cl:nil " # Measurement of the Magnetic Field vector at a specific location.~%~% # If the covariance of the measurement is known, it should be filled in~% # (if all you know is the variance of each measurement, e.g. from the datasheet,~% #just put those along the diagonal)~% # A covariance matrix of all zeros will be interpreted as \"covariance unknown\",~% # and to use the data a covariance will have to be assumed or gotten from some~% # other source~%~%~% Header header                        # timestamp is the time the~%                                      # field was measured~%                                      # frame_id is the location and orientation~%                                      # of the field measurement~%~% geometry_msgs/Vector3 magnetic_field # x, y, and z components of the~%                                      # field vector in Tesla~%                                      # If your sensor does not output 3 axes,~%                                      # put NaNs in the components not reported.~%~% float64[9] magnetic_field_covariance # Row major about x, y, z axes~%                                      # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticField>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magnetic_field))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'magnetic_field_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticField>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticField
    (cl:cons ':header (header msg))
    (cl:cons ':magnetic_field (magnetic_field msg))
    (cl:cons ':magnetic_field_covariance (magnetic_field_covariance msg))
))
