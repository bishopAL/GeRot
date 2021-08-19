;; Auto-generated. Do not edit!


(when (boundp 'shape_msgs::Plane)
  (if (not (find-package "SHAPE_MSGS"))
    (make-package "SHAPE_MSGS"))
  (shadow 'Plane (find-package "SHAPE_MSGS")))
(unless (find-package "SHAPE_MSGS::PLANE")
  (make-package "SHAPE_MSGS::PLANE"))

(in-package "ROS")
;;//! \htmlinclude Plane.msg.html


(defclass shape_msgs::Plane
  :super ros::object
  :slots (_coef ))

(defmethod shape_msgs::Plane
  (:init
   (&key
    ((:coef __coef) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _coef __coef)
   self)
  (:coef
   (&optional __coef)
   (if __coef (setq _coef __coef)) _coef)
  (:serialization-length
   ()
   (+
    ;; float64[4] _coef
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[4] _coef
     (dotimes (i 4)
       (sys::poke (elt _coef i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[4] _coef
   (dotimes (i (length _coef))
     (setf (elt _coef i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get shape_msgs::Plane :md5sum-) "2c1b92ed8f31492f8e73f6a4a44ca796")
(setf (get shape_msgs::Plane :datatype-) "shape_msgs/Plane")
(setf (get shape_msgs::Plane :definition-)
      "# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

")



(provide :shape_msgs/Plane "2c1b92ed8f31492f8e73f6a4a44ca796")


