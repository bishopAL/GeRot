; Auto-generated. Do not edit!


(cl:in-package shape_msgs-msg)


;//! \htmlinclude SolidPrimitive.msg.html

(cl:defclass <SolidPrimitive> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SolidPrimitive (<SolidPrimitive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolidPrimitive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolidPrimitive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shape_msgs-msg:<SolidPrimitive> is deprecated: use shape_msgs-msg:SolidPrimitive instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SolidPrimitive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:type-val is deprecated.  Use shape_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <SolidPrimitive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:dimensions-val is deprecated.  Use shape_msgs-msg:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SolidPrimitive>)))
    "Constants for message type '<SolidPrimitive>"
  '((:BOX . 1)
    (:SPHERE . 2)
    (:CYLINDER . 3)
    (:CONE . 4)
    (:BOX_X . 0)
    (:BOX_Y . 1)
    (:BOX_Z . 2)
    (:SPHERE_RADIUS . 0)
    (:CYLINDER_HEIGHT . 0)
    (:CYLINDER_RADIUS . 1)
    (:CONE_HEIGHT . 0)
    (:CONE_RADIUS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SolidPrimitive)))
    "Constants for message type 'SolidPrimitive"
  '((:BOX . 1)
    (:SPHERE . 2)
    (:CYLINDER . 3)
    (:CONE . 4)
    (:BOX_X . 0)
    (:BOX_Y . 1)
    (:BOX_Z . 2)
    (:SPHERE_RADIUS . 0)
    (:CYLINDER_HEIGHT . 0)
    (:CYLINDER_RADIUS . 1)
    (:CONE_HEIGHT . 0)
    (:CONE_RADIUS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolidPrimitive>) ostream)
  "Serializes a message object of type '<SolidPrimitive>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dimensions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'dimensions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolidPrimitive>) istream)
  "Deserializes a message object of type '<SolidPrimitive>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dimensions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dimensions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolidPrimitive>)))
  "Returns string type for a message object of type '<SolidPrimitive>"
  "shape_msgs/SolidPrimitive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolidPrimitive)))
  "Returns string type for a message object of type 'SolidPrimitive"
  "shape_msgs/SolidPrimitive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolidPrimitive>)))
  "Returns md5sum for a message object of type '<SolidPrimitive>"
  "d8f8cbc74c5ff283fca29569ccefb45d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolidPrimitive)))
  "Returns md5sum for a message object of type 'SolidPrimitive"
  "d8f8cbc74c5ff283fca29569ccefb45d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolidPrimitive>)))
  "Returns full string definition for message of type '<SolidPrimitive>"
  (cl:format cl:nil "# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolidPrimitive)))
  "Returns full string definition for message of type 'SolidPrimitive"
  (cl:format cl:nil "# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolidPrimitive>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dimensions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolidPrimitive>))
  "Converts a ROS message object to a list"
  (cl:list 'SolidPrimitive
    (cl:cons ':type (type msg))
    (cl:cons ':dimensions (dimensions msg))
))
