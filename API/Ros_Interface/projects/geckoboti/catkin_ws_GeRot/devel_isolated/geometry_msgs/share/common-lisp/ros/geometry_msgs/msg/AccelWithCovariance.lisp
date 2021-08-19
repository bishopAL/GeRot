; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude AccelWithCovariance.msg.html

(cl:defclass <AccelWithCovariance> (roslisp-msg-protocol:ros-message)
  ((accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AccelWithCovariance (<AccelWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<AccelWithCovariance> is deprecated: use geometry_msgs-msg:AccelWithCovariance instead.")))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <AccelWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:accel-val is deprecated.  Use geometry_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <AccelWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:covariance-val is deprecated.  Use geometry_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelWithCovariance>) ostream)
  "Serializes a message object of type '<AccelWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelWithCovariance>) istream)
  "Deserializes a message object of type '<AccelWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 36)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelWithCovariance>)))
  "Returns string type for a message object of type '<AccelWithCovariance>"
  "geometry_msgs/AccelWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelWithCovariance)))
  "Returns string type for a message object of type 'AccelWithCovariance"
  "geometry_msgs/AccelWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelWithCovariance>)))
  "Returns md5sum for a message object of type '<AccelWithCovariance>"
  "ad5a718d699c6be72a02b8d6a139f334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelWithCovariance)))
  "Returns md5sum for a message object of type 'AccelWithCovariance"
  "ad5a718d699c6be72a02b8d6a139f334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelWithCovariance>)))
  "Returns full string definition for message of type '<AccelWithCovariance>"
  (cl:format cl:nil "# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelWithCovariance)))
  "Returns full string definition for message of type 'AccelWithCovariance"
  (cl:format cl:nil "# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelWithCovariance
    (cl:cons ':accel (accel msg))
    (cl:cons ':covariance (covariance msg))
))
