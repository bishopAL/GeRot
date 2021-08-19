; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude TwistWithCovariance.msg.html

(cl:defclass <TwistWithCovariance> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TwistWithCovariance (<TwistWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwistWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwistWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<TwistWithCovariance> is deprecated: use geometry_msgs-msg:TwistWithCovariance instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <TwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:twist-val is deprecated.  Use geometry_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <TwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:covariance-val is deprecated.  Use geometry_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwistWithCovariance>) ostream)
  "Serializes a message object of type '<TwistWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwistWithCovariance>) istream)
  "Deserializes a message object of type '<TwistWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwistWithCovariance>)))
  "Returns string type for a message object of type '<TwistWithCovariance>"
  "geometry_msgs/TwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwistWithCovariance)))
  "Returns string type for a message object of type 'TwistWithCovariance"
  "geometry_msgs/TwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwistWithCovariance>)))
  "Returns md5sum for a message object of type '<TwistWithCovariance>"
  "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwistWithCovariance)))
  "Returns md5sum for a message object of type 'TwistWithCovariance"
  "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwistWithCovariance>)))
  "Returns full string definition for message of type '<TwistWithCovariance>"
  (cl:format cl:nil "# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwistWithCovariance)))
  "Returns full string definition for message of type 'TwistWithCovariance"
  (cl:format cl:nil "# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwistWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwistWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'TwistWithCovariance
    (cl:cons ':twist (twist msg))
    (cl:cons ':covariance (covariance msg))
))
