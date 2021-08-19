; Auto-generated. Do not edit!


(cl:in-package geometry_msgs-msg)


;//! \htmlinclude Inertia.msg.html

(cl:defclass <Inertia> (roslisp-msg-protocol:ros-message)
  ((m
    :reader m
    :initarg :m
    :type cl:float
    :initform 0.0)
   (com
    :reader com
    :initarg :com
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ixx
    :reader ixx
    :initarg :ixx
    :type cl:float
    :initform 0.0)
   (ixy
    :reader ixy
    :initarg :ixy
    :type cl:float
    :initform 0.0)
   (ixz
    :reader ixz
    :initarg :ixz
    :type cl:float
    :initform 0.0)
   (iyy
    :reader iyy
    :initarg :iyy
    :type cl:float
    :initform 0.0)
   (iyz
    :reader iyz
    :initarg :iyz
    :type cl:float
    :initform 0.0)
   (izz
    :reader izz
    :initarg :izz
    :type cl:float
    :initform 0.0))
)

(cl:defclass Inertia (<Inertia>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Inertia>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Inertia)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geometry_msgs-msg:<Inertia> is deprecated: use geometry_msgs-msg:Inertia instead.")))

(cl:ensure-generic-function 'm-val :lambda-list '(m))
(cl:defmethod m-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:m-val is deprecated.  Use geometry_msgs-msg:m instead.")
  (m m))

(cl:ensure-generic-function 'com-val :lambda-list '(m))
(cl:defmethod com-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:com-val is deprecated.  Use geometry_msgs-msg:com instead.")
  (com m))

(cl:ensure-generic-function 'ixx-val :lambda-list '(m))
(cl:defmethod ixx-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:ixx-val is deprecated.  Use geometry_msgs-msg:ixx instead.")
  (ixx m))

(cl:ensure-generic-function 'ixy-val :lambda-list '(m))
(cl:defmethod ixy-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:ixy-val is deprecated.  Use geometry_msgs-msg:ixy instead.")
  (ixy m))

(cl:ensure-generic-function 'ixz-val :lambda-list '(m))
(cl:defmethod ixz-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:ixz-val is deprecated.  Use geometry_msgs-msg:ixz instead.")
  (ixz m))

(cl:ensure-generic-function 'iyy-val :lambda-list '(m))
(cl:defmethod iyy-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:iyy-val is deprecated.  Use geometry_msgs-msg:iyy instead.")
  (iyy m))

(cl:ensure-generic-function 'iyz-val :lambda-list '(m))
(cl:defmethod iyz-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:iyz-val is deprecated.  Use geometry_msgs-msg:iyz instead.")
  (iyz m))

(cl:ensure-generic-function 'izz-val :lambda-list '(m))
(cl:defmethod izz-val ((m <Inertia>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geometry_msgs-msg:izz-val is deprecated.  Use geometry_msgs-msg:izz instead.")
  (izz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Inertia>) ostream)
  "Serializes a message object of type '<Inertia>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'com) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ixx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ixy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ixz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'iyy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'iyz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'izz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Inertia>) istream)
  "Deserializes a message object of type '<Inertia>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'com) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ixx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ixy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ixz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iyy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iyz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'izz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Inertia>)))
  "Returns string type for a message object of type '<Inertia>"
  "geometry_msgs/Inertia")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Inertia)))
  "Returns string type for a message object of type 'Inertia"
  "geometry_msgs/Inertia")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Inertia>)))
  "Returns md5sum for a message object of type '<Inertia>"
  "1d26e4bb6c83ff141c5cf0d883c2b0fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Inertia)))
  "Returns md5sum for a message object of type 'Inertia"
  "1d26e4bb6c83ff141c5cf0d883c2b0fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Inertia>)))
  "Returns full string definition for message of type '<Inertia>"
  (cl:format cl:nil "# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Inertia)))
  "Returns full string definition for message of type 'Inertia"
  (cl:format cl:nil "# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Inertia>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'com))
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Inertia>))
  "Converts a ROS message object to a list"
  (cl:list 'Inertia
    (cl:cons ':m (m msg))
    (cl:cons ':com (com msg))
    (cl:cons ':ixx (ixx msg))
    (cl:cons ':ixy (ixy msg))
    (cl:cons ':ixz (ixz msg))
    (cl:cons ':iyy (iyy msg))
    (cl:cons ':iyz (iyz msg))
    (cl:cons ':izz (izz msg))
))
