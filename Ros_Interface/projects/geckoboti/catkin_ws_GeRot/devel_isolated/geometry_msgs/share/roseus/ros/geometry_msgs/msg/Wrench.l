;; Auto-generated. Do not edit!


(when (boundp 'geometry_msgs::Wrench)
  (if (not (find-package "GEOMETRY_MSGS"))
    (make-package "GEOMETRY_MSGS"))
  (shadow 'Wrench (find-package "GEOMETRY_MSGS")))
(unless (find-package "GEOMETRY_MSGS::WRENCH")
  (make-package "GEOMETRY_MSGS::WRENCH"))

(in-package "ROS")
;;//! \htmlinclude Wrench.msg.html


(defclass geometry_msgs::Wrench
  :super ros::object
  :slots (_force _torque ))

(defmethod geometry_msgs::Wrench
  (:init
   (&key
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:torque __torque) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Vector3 _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Vector3 _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Vector3 _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(setf (get geometry_msgs::Wrench :md5sum-) "4f539cf138b23283b520fd271b567936")
(setf (get geometry_msgs::Wrench :datatype-) "geometry_msgs/Wrench")
(setf (get geometry_msgs::Wrench :definition-)
      "# This represents force in free space, separated into
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



(provide :geometry_msgs/Wrench "4f539cf138b23283b520fd271b567936")


