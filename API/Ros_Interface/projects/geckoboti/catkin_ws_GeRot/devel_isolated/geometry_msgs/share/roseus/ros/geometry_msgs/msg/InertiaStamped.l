;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::InertiaStamped)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'InertiaStamped (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::INERTIASTAMPED")
  (make-package "GEOMETRY_MSGS::INERTIASTAMPED"))

(in-package "ROS")
;;//! \htmlinclude InertiaStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geometry_msgs::InertiaStamped
  :super ros::object
  :slots (_header _inertia ))

(defmethod geometry_msgs::InertiaStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:inertia __inertia) (instance geometry_msgs::Inertia :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _inertia __inertia)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:inertia
   (&rest __inertia)
   (if (keywordp (car __inertia))
       (send* _inertia __inertia)
     (progn
       (if __inertia (setq _inertia (car __inertia)))
       _inertia)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Inertia _inertia
    (send _inertia :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Inertia _inertia
       (send _inertia :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Inertia _inertia
     (send _inertia :deserialize buf ptr-) (incf ptr- (send _inertia :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::InertiaStamped :md5sum-) "ddee48caeab5a966c5e8d166654a9ac7")
(setf (get geometry_msgs::InertiaStamped :datatype-) "geometry_msgs/InertiaStamped")
(setf (get geometry_msgs::InertiaStamped :definition-)
      "Header header
Inertia inertia

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
MSG: geometry_msgs/Inertia
# Mass [kg]
float64 m

# Center of mass [m]
geometry_msgs/Vector3 com

# Inertia Tensor [kg-m^2]
#     | ixx ixy ixz |
# I = | ixy iyy iyz |
#     | ixz iyz izz |
float64 ixx
float64 ixy
float64 ixz
float64 iyy
float64 iyz
float64 izz

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :geometry_msgs/InertiaStamped "ddee48caeab5a966c5e8d166654a9ac7")


