;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::WrenchStamped)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'WrenchStamped (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::WRENCHSTAMPED")
  (make-package "GEOMETRY_MSGS::WRENCHSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude WrenchStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geometry_msgs::WrenchStamped
  :super ros::object
  :slots (_header _wrench ))

(defmethod geometry_msgs::WrenchStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _wrench __wrench)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::WrenchStamped :md5sum-) "d78d3cb249ce23087ade7e7d0c40cfa7")
(setf (get geometry_msgs::WrenchStamped :datatype-) "geometry_msgs/WrenchStamped")
(setf (get geometry_msgs::WrenchStamped :definition-)
      "# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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



(provide :geometry_msgs/WrenchStamped "d78d3cb249ce23087ade7e7d0c40cfa7")


