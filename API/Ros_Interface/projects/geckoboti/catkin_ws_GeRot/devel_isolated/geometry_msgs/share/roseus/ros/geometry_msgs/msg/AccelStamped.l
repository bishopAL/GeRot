;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::AccelStamped)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'AccelStamped (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::ACCELSTAMPED")
  (make-package "GEOMETRY_MSGS::ACCELSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude AccelStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geometry_msgs::AccelStamped
  :super ros::object
  :slots (_header _accel ))

(defmethod geometry_msgs::AccelStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _accel __accel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::AccelStamped :md5sum-) "d8a98a5d81351b6eb0578c78557e7659")
(setf (get geometry_msgs::AccelStamped :datatype-) "geometry_msgs/AccelStamped")
(setf (get geometry_msgs::AccelStamped :definition-)
      "# An accel with reference coordinate frame and timestamp
Header header
Accel accel

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
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
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



(provide :geometry_msgs/AccelStamped "d8a98a5d81351b6eb0578c78557e7659")


