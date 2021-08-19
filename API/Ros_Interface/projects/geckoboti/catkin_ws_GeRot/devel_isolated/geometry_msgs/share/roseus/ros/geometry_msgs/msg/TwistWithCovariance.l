;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::TwistWithCovariance)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'TwistWithCovariance (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::TWISTWITHCOVARIANCE")
  (make-package "GEOMETRY_MSGS::TWISTWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude TwistWithCovariance.msg.html


(defclass geometry_msgs::TwistWithCovariance
  :super ros::object
  :slots (_twist _covariance ))

(defmethod geometry_msgs::TwistWithCovariance
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _covariance __covariance)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get geometry_msgs::TwistWithCovariance :md5sum-) "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(setf (get geometry_msgs::TwistWithCovariance :datatype-) "geometry_msgs/TwistWithCovariance")
(setf (get geometry_msgs::TwistWithCovariance :definition-)
      "# This expresses velocity in free space with uncertainty.

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



(provide :geometry_msgs/TwistWithCovariance "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")


