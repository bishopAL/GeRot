; Auto-generated. Do not edit!


(cl:in-package nav_msgs-msg)


;//! \htmlinclude MapMetaData.msg.html

(cl:defclass <MapMetaData> (roslisp-msg-protocol:ros-message)
  ((map_load_time
    :reader map_load_time
    :initarg :map_load_time
    :type cl:real
    :initform 0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MapMetaData (<MapMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_msgs-msg:<MapMetaData> is deprecated: use nav_msgs-msg:MapMetaData instead.")))

(cl:ensure-generic-function 'map_load_time-val :lambda-list '(m))
(cl:defmethod map_load_time-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:map_load_time-val is deprecated.  Use nav_msgs-msg:map_load_time instead.")
  (map_load_time m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:resolution-val is deprecated.  Use nav_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:width-val is deprecated.  Use nav_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:height-val is deprecated.  Use nav_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-msg:origin-val is deprecated.  Use nav_msgs-msg:origin instead.")
  (origin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapMetaData>) ostream)
  "Serializes a message object of type '<MapMetaData>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'map_load_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'map_load_time) (cl:floor (cl:slot-value msg 'map_load_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapMetaData>) istream)
  "Deserializes a message object of type '<MapMetaData>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_load_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapMetaData>)))
  "Returns string type for a message object of type '<MapMetaData>"
  "nav_msgs/MapMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapMetaData)))
  "Returns string type for a message object of type 'MapMetaData"
  "nav_msgs/MapMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapMetaData>)))
  "Returns md5sum for a message object of type '<MapMetaData>"
  "10cfc8a2818024d3248802c00c95f11b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapMetaData)))
  "Returns md5sum for a message object of type 'MapMetaData"
  "10cfc8a2818024d3248802c00c95f11b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapMetaData>)))
  "Returns full string definition for message of type '<MapMetaData>"
  (cl:format cl:nil "# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapMetaData)))
  "Returns full string definition for message of type 'MapMetaData"
  (cl:format cl:nil "# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapMetaData>))
  (cl:+ 0
     8
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapMetaData
    (cl:cons ':map_load_time (map_load_time msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':origin (origin msg))
))
