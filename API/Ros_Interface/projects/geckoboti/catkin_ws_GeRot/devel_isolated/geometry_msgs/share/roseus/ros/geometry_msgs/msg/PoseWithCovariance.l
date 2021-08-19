;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::PoseWithCovariance)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'PoseWithCovariance (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::POSEWITHCOVARIANCE")
  (make-package "GEOMETRY_MSGS::POSEWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude PoseWithCovariance.msg.html


(defclass geometry_msgs::PoseWithCovariance
  :super ros::object
  :slots (_pose _covariance ))

(defmethod geometry_msgs::PoseWithCovariance
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get geometry_msgs::PoseWithCovariance :md5sum-) "c23e848cf1b7533a8d7c259073a97e6f")
(setf (get geometry_msgs::PoseWithCovariance :datatype-) "geometry_msgs/PoseWithCovariance")
(setf (get geometry_msgs::PoseWithCovariance :definition-)
      "# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :geometry_msgs/PoseWithCovariance "c23e848cf1b7533a8d7c259073a97e6f")


