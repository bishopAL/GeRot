; Auto-generated. Do not edit!


(cl:in-package nav_msgs-msg)


;//! \htmlinclude GridCells.msg.html

(cl:defclass <GridCells> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cell_width
    :reader cell_width
    :initarg :cell_width
    :type cl:float
    :initform 0.0)
   (cell_height
    :reader cell_height
    :initarg :cell_height
    :type cl:float
    :initform 0.0)
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GridCells (<GridCells>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridCells>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridCells)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_msgs-msg:<GridCells> is deprecated: use nav_msgs-msg:GridCells instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GridCells>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:header-val is deprecated.  Use nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cell_width-val :lambda-list '(m))
(cl:defmethod cell_width-val ((m <GridCells>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:cell_width-val is deprecated.  Use nav_msgs-msg:cell_width instead.")
  (cell_width m))

(cl:ensure-generic-function 'cell_height-val :lambda-list '(m))
(cl:defmethod cell_height-val ((m <GridCells>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:cell_height-val is deprecated.  Use nav_msgs-msg:cell_height instead.")
  (cell_height m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <GridCells>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:cells-val is deprecated.  Use nav_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridCells>) ostream)
  "Serializes a message object of type '<GridCells>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cell_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cell_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridCells>) istream)
  "Deserializes a message object of type '<GridCells>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cell_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cell_height) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridCells>)))
  "Returns string type for a message object of type '<GridCells>"
  "nav_msgs/GridCells")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridCells)))
  "Returns string type for a message object of type 'GridCells"
  "nav_msgs/GridCells")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridCells>)))
  "Returns md5sum for a message object of type '<GridCells>"
  "b9e4f5df6d28e272ebde00a3994830f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridCells)))
  "Returns md5sum for a message object of type 'GridCells"
  "b9e4f5df6d28e272ebde00a3994830f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridCells>)))
  "Returns full string definition for message of type '<GridCells>"
  (cl:format cl:nil "#an array of cells in a 2D grid~%Header header~%float32 cell_width~%float32 cell_height~%geometry_msgs/Point[] cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridCells)))
  "Returns full string definition for message of type 'GridCells"
  (cl:format cl:nil "#an array of cells in a 2D grid~%Header header~%float32 cell_width~%float32 cell_height~%geometry_msgs/Point[] cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridCells>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridCells>))
  "Converts a ROS message object to a list"
  (cl:list 'GridCells
    (cl:cons ':header (header msg))
    (cl:cons ':cell_width (cell_width msg))
    (cl:cons ':cell_height (cell_height msg))
    (cl:cons ':cells (cells msg))
))
