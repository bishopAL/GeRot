;; Auto-generated. Do not edit!


(when (boundp 'nav_msgs::MapMetaData)
  (if (not (find-package "NAV_MSGS"))
    (make-package "NAV_MSGS"))
  (shadow 'MapMetaData (find-package "NAV_MSGS")))
(unless (find-package "NAV_MSGS::MAPMETADATA")
  (make-package "NAV_MSGS::MAPMETADATA"))

(in-package "ROS")
;;//! \htmlinclude MapMetaData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass nav_msgs::MapMetaData
  :super ros::object
  :slots (_map_load_time _resolution _width _height _origin ))

(defmethod nav_msgs::MapMetaData
  (:init
   (&key
    ((:map_load_time __map_load_time) (instance ros::time :init))
    ((:resolution __resolution) 0.0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _map_load_time __map_load_time)
   (setq _resolution (float __resolution))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _origin __origin)
   self)
  (:map_load_time
   (&optional __map_load_time)
   (if __map_load_time (setq _map_load_time __map_load_time)) _map_load_time)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:serialization-length
   ()
   (+
    ;; time _map_load_time
    8
    ;; float32 _resolution
    4
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _map_load_time
       (write-long (send _map_load_time :sec) s) (write-long (send _map_load_time :nsec) s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _map_load_time
     (send _map_load_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _map_load_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;;
   self)
  )

(setf (get nav_msgs::MapMetaData :md5sum-) "10cfc8a2818024d3248802c00c95f11b")
(setf (get nav_msgs::MapMetaData :datatype-) "nav_msgs/MapMetaData")
(setf (get nav_msgs::MapMetaData :definition-)
      "# This hold basic information about the characterists of the OccupancyGrid

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



(provide :nav_msgs/MapMetaData "10cfc8a2818024d3248802c00c95f11b")


