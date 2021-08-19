; Auto-generated. Do not edit!


(cl:in-package shape_msgs-msg)


;//! \htmlinclude Plane.msg.html

(cl:defclass <Plane> (roslisp-msg-protocol:ros-message)
  ((coef
    :reader coef
    :initarg :coef
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Plane (<Plane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shape_msgs-msg:<Plane> is deprecated: use shape_msgs-msg:Plane instead.")))

(cl:ensure-generic-function 'coef-val :lambda-list '(m))
(cl:defmethod coef-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:coef-val is deprecated.  Use shape_msgs-msg:coef instead.")
  (coef m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plane>) ostream)
  "Serializes a message object of type '<Plane>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coef))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plane>) istream)
  "Deserializes a message object of type '<Plane>"
  (cl:setf (cl:slot-value msg 'coef) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'coef)))
    (cl:dotimes (i 4)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plane>)))
  "Returns string type for a message object of type '<Plane>"
  "shape_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plane)))
  "Returns string type for a message object of type 'Plane"
  "shape_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plane>)))
  "Returns md5sum for a message object of type '<Plane>"
  "2c1b92ed8f31492f8e73f6a4a44ca796")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plane)))
  "Returns md5sum for a message object of type 'Plane"
  "2c1b92ed8f31492f8e73f6a4a44ca796")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plane>)))
  "Returns full string definition for message of type '<Plane>"
  (cl:format cl:nil "# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plane)))
  "Returns full string definition for message of type 'Plane"
  (cl:format cl:nil "# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plane>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'coef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plane>))
  "Converts a ROS message object to a list"
  (cl:list 'Plane
    (cl:cons ':coef (coef msg))
))
