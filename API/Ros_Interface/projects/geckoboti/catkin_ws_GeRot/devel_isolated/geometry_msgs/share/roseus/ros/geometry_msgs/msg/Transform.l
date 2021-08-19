;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::Transform)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'Transform (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::TRANSFORM")
  (make-package "GEOMETRY_MSGS::TRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude Transform.msg.html


(defclass geometry_msgs::Transform
  :super ros::object
  :slots (_translation _rotation ))

(defmethod geometry_msgs::Transform
  (:init
   (&key
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:rotation __rotation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; geometry_msgs/Quaternion _rotation
    (send _rotation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; geometry_msgs/Quaternion _rotation
       (send _rotation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; geometry_msgs/Quaternion _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::Transform :md5sum-) "ac9eff44abf714214112b05d54a3cf9b")
(setf (get geometry_msgs::Transform :datatype-) "geometry_msgs/Transform")
(setf (get geometry_msgs::Transform :definition-)
      "# This represents the transform between two coordinate frames in free space.

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

")



(provide :geometry_msgs/Transform "ac9eff44abf714214112b05d54a3cf9b")


