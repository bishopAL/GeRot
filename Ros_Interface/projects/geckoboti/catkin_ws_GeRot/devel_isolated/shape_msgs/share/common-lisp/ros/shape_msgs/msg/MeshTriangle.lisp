; Auto-generated. Do not edit!


(cl:in-package shape_msgs-msg)


;//! \htmlinclude MeshTriangle.msg.html

(cl:defclass <MeshTriangle> (roslisp-msg-protocol:ros-message)
  ((vertex_indices
    :reader vertex_indices
    :initarg :vertex_indices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MeshTriangle (<MeshTriangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MeshTriangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MeshTriangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shape_msgs-msg:<MeshTriangle> is deprecated: use shape_msgs-msg:MeshTriangle instead.")))

(cl:ensure-generic-function 'vertex_indices-val :lambda-list '(m))
(cl:defmethod vertex_indices-val ((m <MeshTriangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:vertex_indices-val is deprecated.  Use shape_msgs-msg:vertex_indices instead.")
  (vertex_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MeshTriangle>) ostream)
  "Serializes a message object of type '<MeshTriangle>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'vertex_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MeshTriangle>) istream)
  "Deserializes a message object of type '<MeshTriangle>"
  (cl:setf (cl:slot-value msg 'vertex_indices) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'vertex_indices)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MeshTriangle>)))
  "Returns string type for a message object of type '<MeshTriangle>"
  "shape_msgs/MeshTriangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MeshTriangle)))
  "Returns string type for a message object of type 'MeshTriangle"
  "shape_msgs/MeshTriangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MeshTriangle>)))
  "Returns md5sum for a message object of type '<MeshTriangle>"
  "23688b2e6d2de3d32fe8af104a903253")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MeshTriangle)))
  "Returns md5sum for a message object of type 'MeshTriangle"
  "23688b2e6d2de3d32fe8af104a903253")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MeshTriangle>)))
  "Returns full string definition for message of type '<MeshTriangle>"
  (cl:format cl:nil "# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MeshTriangle)))
  "Returns full string definition for message of type 'MeshTriangle"
  (cl:format cl:nil "# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MeshTriangle>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vertex_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MeshTriangle>))
  "Converts a ROS message object to a list"
  (cl:list 'MeshTriangle
    (cl:cons ':vertex_indices (vertex_indices msg))
))
