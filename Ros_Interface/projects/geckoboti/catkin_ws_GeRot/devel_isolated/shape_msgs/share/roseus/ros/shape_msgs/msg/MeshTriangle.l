;; Auto-generated. Do not edit!


(when (boundp 'shape_msgs::MeshTriangle)
  (if (not (find-package "SHAPE_MSGS"))
    (make-package "SHAPE_MSGS"))
  (shadow 'MeshTriangle (find-package "SHAPE_MSGS")))
(unless (find-package "SHAPE_MSGS::MESHTRIANGLE")
  (make-package "SHAPE_MSGS::MESHTRIANGLE"))

(in-package "ROS")
;;//! \htmlinclude MeshTriangle.msg.html


(defclass shape_msgs::MeshTriangle
  :super ros::object
  :slots (_vertex_indices ))

(defmethod shape_msgs::MeshTriangle
  (:init
   (&key
    ((:vertex_indices __vertex_indices) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _vertex_indices __vertex_indices)
   self)
  (:vertex_indices
   (&optional __vertex_indices)
   (if __vertex_indices (setq _vertex_indices __vertex_indices)) _vertex_indices)
  (:serialization-length
   ()
   (+
    ;; uint32[3] _vertex_indices
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[3] _vertex_indices
     (dotimes (i 3)
       (write-long (elt _vertex_indices i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[3] _vertex_indices
   (dotimes (i (length _vertex_indices))
     (setf (elt _vertex_indices i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get shape_msgs::MeshTriangle :md5sum-) "23688b2e6d2de3d32fe8af104a903253")
(setf (get shape_msgs::MeshTriangle :datatype-) "shape_msgs/MeshTriangle")
(setf (get shape_msgs::MeshTriangle :definition-)
      "# Definition of a triangle's vertices
uint32[3] vertex_indices

")



(provide :shape_msgs/MeshTriangle "23688b2e6d2de3d32fe8af104a903253")


