;; Auto-generated. Do not edit!


(when (boundp 'nav_msgs::GetMap)
  (if (not (find-package "NAV_MSGS"))
    (make-package "NAV_MSGS"))
  (shadow 'GetMap (find-package "NAV_MSGS")))
(unless (find-package "NAV_MSGS::GETMAP")
  (make-package "NAV_MSGS::GETMAP"))
(unless (find-package "NAV_MSGS::GETMAPREQUEST")
  (make-package "NAV_MSGS::GETMAPREQUEST"))
(unless (find-package "NAV_MSGS::GETMAPRESPONSE")
  (make-package "NAV_MSGS::GETMAPRESPONSE"))

(in-package "ROS")





(defclass nav_msgs::GetMapRequest
  :super ros::object
  :slots ())

(defmethod nav_msgs::GetMapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass nav_msgs::GetMapResponse
  :super ros::object
  :slots (_map ))

(defmethod nav_msgs::GetMapResponse
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass nav_msgs::GetMap
  :super ros::object
  :slots ())

(setf (get nav_msgs::GetMap :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get nav_msgs::GetMap :datatype-) "nav_msgs/GetMap")
(setf (get nav_msgs::GetMap :request) nav_msgs::GetMapRequest)
(setf (get nav_msgs::GetMap :response) nav_msgs::GetMapResponse)

(defmethod nav_msgs::GetMapRequest
  (:response () (instance nav_msgs::GetMapResponse :init)))

(setf (get nav_msgs::GetMapRequest :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get nav_msgs::GetMapRequest :datatype-) "nav_msgs/GetMapRequest")
(setf (get nav_msgs::GetMapRequest :definition-)
      "
---
nav_msgs/OccupancyGrid map


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
")

(setf (get nav_msgs::GetMapResponse :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get nav_msgs::GetMapResponse :datatype-) "nav_msgs/GetMapResponse")
(setf (get nav_msgs::GetMapResponse :definition-)
      "
---
nav_msgs/OccupancyGrid map


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
")



(provide :nav_msgs/GetMap "6cdd0a18e0aff5b0a3ca2326a89b54ff")


