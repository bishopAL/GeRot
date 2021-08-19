;; Auto-generated. Do not edit!


(when (boundp 'nav_msgs::SetMap)
  (if (not (find-package "NAV_MSGS"))
    (make-package "NAV_MSGS"))
  (shadow 'SetMap (find-package "NAV_MSGS")))
(unless (find-package "NAV_MSGS::SETMAP")
  (make-package "NAV_MSGS::SETMAP"))
(unless (find-package "NAV_MSGS::SETMAPREQUEST")
  (make-package "NAV_MSGS::SETMAPREQUEST"))
(unless (find-package "NAV_MSGS::SETMAPRESPONSE")
  (make-package "NAV_MSGS::SETMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass nav_msgs::SetMapRequest
  :super ros::object
  :slots (_map _initial_pose ))

(defmethod nav_msgs::SetMapRequest
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    ((:initial_pose __initial_pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _map __map)
   (setq _initial_pose __initial_pose)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(defclass nav_msgs::SetMapResponse
  :super ros::object
  :slots (_success ))

(defmethod nav_msgs::SetMapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nav_msgs::SetMap
  :super ros::object
  :slots ())

(setf (get nav_msgs::SetMap :md5sum-) "c36922319011e63ed7784112ad4fdd32")
(setf (get nav_msgs::SetMap :datatype-) "nav_msgs/SetMap")
(setf (get nav_msgs::SetMap :request) nav_msgs::SetMapRequest)
(setf (get nav_msgs::SetMap :response) nav_msgs::SetMapResponse)

(defmethod nav_msgs::SetMapRequest
  (:response () (instance nav_msgs::SetMapResponse :init)))

(setf (get nav_msgs::SetMapRequest :md5sum-) "c36922319011e63ed7784112ad4fdd32")
(setf (get nav_msgs::SetMapRequest :datatype-) "nav_msgs/SetMapRequest")
(setf (get nav_msgs::SetMapRequest :definition-)
      "
nav_msgs/OccupancyGrid map
geometry_msgs/PoseWithCovarianceStamped initial_pose

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance
---
bool success


")

(setf (get nav_msgs::SetMapResponse :md5sum-) "c36922319011e63ed7784112ad4fdd32")
(setf (get nav_msgs::SetMapResponse :datatype-) "nav_msgs/SetMapResponse")
(setf (get nav_msgs::SetMapResponse :definition-)
      "
nav_msgs/OccupancyGrid map
geometry_msgs/PoseWithCovarianceStamped initial_pose

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance
---
bool success


")



(provide :nav_msgs/SetMap "c36922319011e63ed7784112ad4fdd32")


