;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::QuaternionStamped)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'QuaternionStamped (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::QUATERNIONSTAMPED")
  (make-package "GEOMETRY_MSGS::QUATERNIONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude QuaternionStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geometry_msgs::QuaternionStamped
  :super ros::object
  :slots (_header _quaternion ))

(defmethod geometry_msgs::QuaternionStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _quaternion __quaternion)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::QuaternionStamped :md5sum-) "e57f1e547e0e1fd13504588ffc8334e2")
(setf (get geometry_msgs::QuaternionStamped :datatype-) "geometry_msgs/QuaternionStamped")
(setf (get geometry_msgs::QuaternionStamped :definition-)
      "# This represents an orientation with reference coordinate frame and timestamp.

Header header
Quaternion quaternion

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :geometry_msgs/QuaternionStamped "e57f1e547e0e1fd13504588ffc8334e2")


