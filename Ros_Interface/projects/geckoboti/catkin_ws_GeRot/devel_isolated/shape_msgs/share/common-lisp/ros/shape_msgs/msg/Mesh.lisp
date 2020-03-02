; Auto-generated. Do not edit!


(cl:in-package shape_msgs-msg)


;//! \htmlinclude Mesh.msg.html

(cl:defclass <Mesh> (roslisp-msg-protocol:ros-message)
  ((triangles
    :reader triangles
    :initarg :triangles
    :type (cl:vector shape_msgs-msg:MeshTriangle)
   :initform (cl:make-array 0 :element-type 'shape_msgs-msg:MeshTriangle :initial-element (cl:make-instance 'shape_msgs-msg:MeshTriangle)))
   (vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Mesh (<Mesh>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mesh>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mesh)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shape_msgs-msg:<Mesh> is deprecated: use shape_msgs-msg:Mesh instead.")))

(cl:ensure-generic-function 'triangles-val :lambda-list '(m))
(cl:defmethod triangles-val ((m <Mesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:triangles-val is deprecated.  Use shape_msgs-msg:triangles instead.")
  (triangles m))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <Mesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shape_msgs-msg:vertices-val is deprecated.  Use shape_msgs-msg:vertices instead.")
  (vertices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mesh>) ostream)
  "Serializes a message object of type '<Mesh>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'triangles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'triangles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mesh>) istream)
  "Deserializes a message object of type '<Mesh>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'triangles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'triangles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'shape_msgs-msg:MeshTriangle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mesh>)))
  "Returns string type for a message object of type '<Mesh>"
  "shape_msgs/Mesh")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mesh)))
  "Returns string type for a message object of type 'Mesh"
  "shape_msgs/Mesh")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mesh>)))
  "Returns md5sum for a message object of type '<Mesh>"
  "1ffdae9486cd3316a121c578b47a85cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mesh)))
  "Returns md5sum for a message object of type 'Mesh"
  "1ffdae9486cd3316a121c578b47a85cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mesh>)))
  "Returns full string definition for message of type '<Mesh>"
  (cl:format cl:nil "# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mesh)))
  "Returns full string definition for message of type 'Mesh"
  (cl:format cl:nil "# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mesh>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'triangles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mesh>))
  "Converts a ROS message object to a list"
  (cl:list 'Mesh
    (cl:cons ':triangles (triangles msg))
    (cl:cons ':vertices (vertices msg))
))
