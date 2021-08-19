;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::AccelWithCovariance)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'AccelWithCovariance (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::ACCELWITHCOVARIANCE")
  (make-package "GEOMETRY_MSGS::ACCELWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude AccelWithCovariance.msg.html


(defclass geometry_msgs::AccelWithCovariance
  :super ros::object
  :slots (_accel _covariance ))

(defmethod geometry_msgs::AccelWithCovariance
  (:init
   (&key
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _accel __accel)
   (setq _covariance __covariance)
   self)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get geometry_msgs::AccelWithCovariance :md5sum-) "ad5a718d699c6be72a02b8d6a139f334")
(setf (get geometry_msgs::AccelWithCovariance :datatype-) "geometry_msgs/AccelWithCovariance")
(setf (get geometry_msgs::AccelWithCovariance :definition-)
      "# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :geometry_msgs/AccelWithCovariance "ad5a718d699c6be72a02b8d6a139f334")


