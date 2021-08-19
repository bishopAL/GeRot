;; Auto-generated. Do not edit!


(when (boundp 'trajectory_msgs::JointTrajectoryPoint)
  (if (not (find-package "TRAJECTORY_MSGS"))
    (make-package "TRAJECTORY_MSGS"))
  (shadow 'JointTrajectoryPoint (find-package "TRAJECTORY_MSGS")))
(unless (find-package "TRAJECTORY_MSGS::JOINTTRAJECTORYPOINT")
  (make-package "TRAJECTORY_MSGS::JOINTTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryPoint.msg.html


(defclass trajectory_msgs::JointTrajectoryPoint
  :super ros::object
  :slots (_positions _velocities _accelerations _effort _time_from_start ))

(defmethod trajectory_msgs::JointTrajectoryPoint
  (:init
   (&key
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:accelerations __accelerations) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_from_start __time_from_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _velocities __velocities)
   (setq _accelerations __accelerations)
   (setq _effort __effort)
   (setq _time_from_start __time_from_start)
   self)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:accelerations
   (&optional __accelerations)
   (if __accelerations (setq _accelerations __accelerations)) _accelerations)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:serialization-length
   ()
   (+
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ;; float64[] _velocities
    (* 8    (length _velocities)) 4
    ;; float64[] _accelerations
    (* 8    (length _accelerations)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; duration _time_from_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocities
     (write-long (length _velocities) s)
     (dotimes (i (length _velocities))
       (sys::poke (elt _velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _accelerations
     (write-long (length _accelerations) s)
     (dotimes (i (length _accelerations))
       (sys::poke (elt _accelerations i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accelerations i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get trajectory_msgs::JointTrajectoryPoint :md5sum-) "f3cd1e1c4d320c79d6985c904ae5dcd3")
(setf (get trajectory_msgs::JointTrajectoryPoint :datatype-) "trajectory_msgs/JointTrajectoryPoint")
(setf (get trajectory_msgs::JointTrajectoryPoint :definition-)
      "# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :trajectory_msgs/JointTrajectoryPoint "f3cd1e1c4d320c79d6985c904ae5dcd3")


