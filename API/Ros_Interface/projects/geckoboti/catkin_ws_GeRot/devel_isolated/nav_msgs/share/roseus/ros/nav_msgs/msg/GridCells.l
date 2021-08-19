;; Auto-generated. Do not edit!


(when (boundp 'nav_msgs::GridCells)
  (if (not (find-package "NAV_MSGS"))
    (make-package "NAV_MSGS"))
  (shadow 'GridCells (find-package "NAV_MSGS")))
(unless (find-package "NAV_MSGS::GRIDCELLS")
  (make-package "NAV_MSGS::GRIDCELLS"))

(in-package "ROS")
;;//! \htmlinclude GridCells.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nav_msgs::GridCells
  :super ros::object
  :slots (_header _cell_width _cell_height _cells ))

(defmethod nav_msgs::GridCells
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cell_width __cell_width) 0.0)
    ((:cell_height __cell_height) 0.0)
    ((:cells __cells) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cell_width (float __cell_width))
   (setq _cell_height (float __cell_height))
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cell_width
   (&optional __cell_width)
   (if __cell_width (setq _cell_width __cell_width)) _cell_width)
  (:cell_height
   (&optional __cell_height)
   (if __cell_height (setq _cell_height __cell_height)) _cell_height)
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _cell_width
    4
    ;; float32 _cell_height
    4
    ;; geometry_msgs/Point[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _cell_width
       (sys::poke _cell_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cell_height
       (sys::poke _cell_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _cell_width
     (setq _cell_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cell_height
     (setq _cell_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nav_msgs::GridCells :md5sum-) "b9e4f5df6d28e272ebde00a3994830f5")
(setf (get nav_msgs::GridCells :datatype-) "nav_msgs/GridCells")
(setf (get nav_msgs::GridCells :definition-)
      "#an array of cells in a 2D grid
Header header
float32 cell_width
float32 cell_height
geometry_msgs/Point[] cells

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :nav_msgs/GridCells "b9e4f5df6d28e272ebde00a3994830f5")


