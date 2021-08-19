;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::TwistWithCovarianceStamped)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'TwistWithCovarianceStamped (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::TWISTWITHCOVARIANCESTAMPED")
  (make-package "GEOMETRY_MSGS::TWISTWITHCOVARIANCESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude TwistWithCovarianceStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geometry_msgs::TwistWithCovarianceStamped
  :super ros::object
  :slots (_header _twist ))

(defmethod geometry_msgs::TwistWithCovarianceStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _twist __twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::TwistWithCovarianceStamped :md5sum-) "8927a1a12fb2607ceea095b2dc440a96")
(setf (get geometry_msgs::TwistWithCovarianceStamped :datatype-) "geometry_msgs/TwistWithCovarianceStamped")
(setf (get geometry_msgs::TwistWithCovarianceStamped :definition-)
      "# This represents an estimated twist with reference coordinate frame and timestamp.
Header header
TwistWithCovariance twist

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
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :geometry_msgs/TwistWithCovarianceStamped "8927a1a12fb2607ceea095b2dc440a96")


