;; Auto-generated. Do not edit!


(when (boundp 'trajectory_msgs::MultiDOFJointTrajectoryPoint)
  (if (not (find-package "TRAJECTORY_MSGS"))
    (make-package "TRAJECTORY_MSGS"))
  (shadow 'MultiDOFJointTrajectoryPoint (find-package "TRAJECTORY_MSGS")))
(unless (find-package "TRAJECTORY_MSGS::MULTIDOFJOINTTRAJECTORYPOINT")
  (make-package "TRAJECTORY_MSGS::MULTIDOFJOINTTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude MultiDOFJointTrajectoryPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass trajectory_msgs::MultiDOFJointTrajectoryPoint
  :super ros::object
  :slots (_transforms _velocities _accelerations _time_from_start ))

(defmethod trajectory_msgs::MultiDOFJointTrajectoryPoint
  (:init
   (&key
    ((:transforms __transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    ((:velocities __velocities) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Twist :init) r)) r))
    ((:accelerations __accelerations) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Twist :init) r)) r))
    ((:time_from_start __time_from_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _transforms __transforms)
   (setq _velocities __velocities)
   (setq _accelerations __accelerations)
   (setq _time_from_start __time_from_start)
   self)
  (:transforms
   (&rest __transforms)
   (if (keywordp (car __transforms))
       (send* _transforms __transforms)
     (progn
       (if __transforms (setq _transforms (car __transforms)))
       _transforms)))
  (:velocities
   (&rest __velocities)
   (if (keywordp (car __velocities))
       (send* _velocities __velocities)
     (progn
       (if __velocities (setq _velocities (car __velocities)))
       _velocities)))
  (:accelerations
   (&rest __accelerations)
   (if (keywordp (car __accelerations))
       (send* _accelerations __accelerations)
     (progn
       (if __accelerations (setq _accelerations (car __accelerations)))
       _accelerations)))
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform[] _transforms
    (apply #'+ (send-all _transforms :serialization-length)) 4
    ;; geometry_msgs/Twist[] _velocities
    (apply #'+ (send-all _velocities :serialization-length)) 4
    ;; geometry_msgs/Twist[] _accelerations
    (apply #'+ (send-all _accelerations :serialization-length)) 4
    ;; duration _time_from_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform[] _transforms
     (write-long (length _transforms) s)
     (dolist (elem _transforms)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _velocities
     (write-long (length _velocities) s)
     (dolist (elem _velocities)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _accelerations
     (write-long (length _accelerations) s)
     (dolist (elem _accelerations)
       (send elem :serialize s)
       )
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform[] _transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _accelerations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get trajectory_msgs::MultiDOFJointTrajectoryPoint :md5sum-) "3ebe08d1abd5b65862d50e09430db776")
(setf (get trajectory_msgs::MultiDOFJointTrajectoryPoint :datatype-) "trajectory_msgs/MultiDOFJointTrajectoryPoint")
(setf (get trajectory_msgs::MultiDOFJointTrajectoryPoint :definition-)
      "# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :trajectory_msgs/MultiDOFJointTrajectoryPoint "3ebe08d1abd5b65862d50e09430db776")


