;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::Inertia)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'Inertia (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::INERTIA")
  (make-package "GEOMETRY_MSGS::INERTIA"))

(in-package "ROS")
;;//! \htmlinclude Inertia.msg.html


(defclass geometry_msgs::Inertia
  :super ros::object
  :slots (_m _com _ixx _ixy _ixz _iyy _iyz _izz ))

(defmethod geometry_msgs::Inertia
  (:init
   (&key
    ((:m __m) 0.0)
    ((:com __com) (instance geometry_msgs::Vector3 :init))
    ((:ixx __ixx) 0.0)
    ((:ixy __ixy) 0.0)
    ((:ixz __ixz) 0.0)
    ((:iyy __iyy) 0.0)
    ((:iyz __iyz) 0.0)
    ((:izz __izz) 0.0)
    )
   (send-super :init)
   (setq _m (float __m))
   (setq _com __com)
   (setq _ixx (float __ixx))
   (setq _ixy (float __ixy))
   (setq _ixz (float __ixz))
   (setq _iyy (float __iyy))
   (setq _iyz (float __iyz))
   (setq _izz (float __izz))
   self)
  (:m
   (&optional __m)
   (if __m (setq _m __m)) _m)
  (:com
   (&rest __com)
   (if (keywordp (car __com))
       (send* _com __com)
     (progn
       (if __com (setq _com (car __com)))
       _com)))
  (:ixx
   (&optional __ixx)
   (if __ixx (setq _ixx __ixx)) _ixx)
  (:ixy
   (&optional __ixy)
   (if __ixy (setq _ixy __ixy)) _ixy)
  (:ixz
   (&optional __ixz)
   (if __ixz (setq _ixz __ixz)) _ixz)
  (:iyy
   (&optional __iyy)
   (if __iyy (setq _iyy __iyy)) _iyy)
  (:iyz
   (&optional __iyz)
   (if __iyz (setq _iyz __iyz)) _iyz)
  (:izz
   (&optional __izz)
   (if __izz (setq _izz __izz)) _izz)
  (:serialization-length
   ()
   (+
    ;; float64 _m
    8
    ;; geometry_msgs/Vector3 _com
    (send _com :serialization-length)
    ;; float64 _ixx
    8
    ;; float64 _ixy
    8
    ;; float64 _ixz
    8
    ;; float64 _iyy
    8
    ;; float64 _iyz
    8
    ;; float64 _izz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _m
       (sys::poke _m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _com
       (send _com :serialize s)
     ;; float64 _ixx
       (sys::poke _ixx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ixy
       (sys::poke _ixy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ixz
       (sys::poke _ixz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iyy
       (sys::poke _iyy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iyz
       (sys::poke _iyz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _izz
       (sys::poke _izz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _m
     (setq _m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _com
     (send _com :deserialize buf ptr-) (incf ptr- (send _com :serialization-length))
   ;; float64 _ixx
     (setq _ixx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ixy
     (setq _ixy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ixz
     (setq _ixz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iyy
     (setq _iyy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iyz
     (setq _iyz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _izz
     (setq _izz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get geometry_msgs::Inertia :md5sum-) "1d26e4bb6c83ff141c5cf0d883c2b0fe")
(setf (get geometry_msgs::Inertia :datatype-) "geometry_msgs/Inertia")
(setf (get geometry_msgs::Inertia :definition-)
      "# Mass [kg]
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



(provide :geometry_msgs/Inertia "1d26e4bb6c83ff141c5cf0d883c2b0fe")


