; Auto-generated. Do not edit!


(cl:in-package nav_msgs-srv)


;//! \htmlinclude SetMap-request.msg.html

(cl:defclass <SetMap-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped)))
)

(cl:defclass SetMap-request (<SetMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_msgs-srv:<SetMap-request> is deprecated: use nav_msgs-srv:SetMap-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <SetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-srv:map-val is deprecated.  Use nav_msgs-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <SetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-srv:initial_pose-val is deprecated.  Use nav_msgs-srv:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMap-request>) ostream)
  "Serializes a message object of type '<SetMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMap-request>) istream)
  "Deserializes a message object of type '<SetMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMap-request>)))
  "Returns string type for a service object of type '<SetMap-request>"
  "nav_msgs/SetMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap-request)))
  "Returns string type for a service object of type 'SetMap-request"
  "nav_msgs/SetMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMap-request>)))
  "Returns md5sum for a message object of type '<SetMap-request>"
  "c36922319011e63ed7784112ad4fdd32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMap-request)))
  "Returns md5sum for a message object of type 'SetMap-request"
  "c36922319011e63ed7784112ad4fdd32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMap-request>)))
  "Returns full string definition for message of type '<SetMap-request>"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid map~%geometry_msgs/PoseWithCovarianceStamped initial_pose~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMap-request)))
  "Returns full string definition for message of type 'SetMap-request"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid map~%geometry_msgs/PoseWithCovarianceStamped initial_pose~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMap-request
    (cl:cons ':map (map msg))
    (cl:cons ':initial_pose (initial_pose msg))
))
;//! \htmlinclude SetMap-response.msg.html

(cl:defclass <SetMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMap-response (<SetMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_msgs-srv:<SetMap-response> is deprecated: use nav_msgs-srv:SetMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_msgs-srv:success-val is deprecated.  Use nav_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMap-response>) ostream)
  "Serializes a message object of type '<SetMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMap-response>) istream)
  "Deserializes a message object of type '<SetMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMap-response>)))
  "Returns string type for a service object of type '<SetMap-response>"
  "nav_msgs/SetMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap-response)))
  "Returns string type for a service object of type 'SetMap-response"
  "nav_msgs/SetMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMap-response>)))
  "Returns md5sum for a message object of type '<SetMap-response>"
  "c36922319011e63ed7784112ad4fdd32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMap-response)))
  "Returns md5sum for a message object of type 'SetMap-response"
  "c36922319011e63ed7784112ad4fdd32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMap-response>)))
  "Returns full string definition for message of type '<SetMap-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMap-response)))
  "Returns full string definition for message of type 'SetMap-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMap)))
  'SetMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMap)))
  'SetMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMap)))
  "Returns string type for a service object of type '<SetMap>"
  "nav_msgs/SetMap")