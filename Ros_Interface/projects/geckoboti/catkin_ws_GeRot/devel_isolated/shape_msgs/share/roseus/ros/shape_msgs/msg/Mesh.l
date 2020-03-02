;; Auto-generated. Do not edit!


(when (boundp 'shape_msgs::Mesh)
  (if (not (find-package "SHAPE_MSGS"))
    (make-package "SHAPE_MSGS"))
  (shadow 'Mesh (find-package "SHAPE_MSGS")))
(unless (find-package "SHAPE_MSGS::MESH")
  (make-package "SHAPE_MSGS::MESH"))

(in-package "ROS")
;;//! \htmlinclude Mesh.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass shape_msgs::Mesh
  :super ros::object
  :slots (_triangles _vertices ))

(defmethod shape_msgs::Mesh
  (:init
   (&key
    ((:triangles __triangles) (let (r) (dotimes (i 0) (push (instance shape_msgs::MeshTriangle :init) r)) r))
    ((:vertices __vertices) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _triangles __triangles)
   (setq _vertices __vertices)
   self)
  (:triangles
   (&rest __triangles)
   (if (keywordp (car __triangles))
       (send* _triangles __triangles)
     (progn
       (if __triangles (setq _triangles (car __triangles)))
       _triangles)))
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:serialization-length
   ()
   (+
    ;; shape_msgs/MeshTriangle[] _triangles
    (apply #'+ (send-all _triangles :serialization-length)) 4
    ;; geometry_msgs/Point[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; shape_msgs/MeshTriangle[] _triangles
     (write-long (length _triangles) s)
     (dolist (elem _triangles)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; shape_msgs/MeshTriangle[] _triangles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _triangles (let (r) (dotimes (i n) (push (instance shape_msgs::MeshTriangle :init) r)) r))
     (dolist (elem- _triangles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get shape_msgs::Mesh :md5sum-) "1ffdae9486cd3316a121c578b47a85cc")
(setf (get shape_msgs::Mesh :datatype-) "shape_msgs/Mesh")
(setf (get shape_msgs::Mesh :definition-)
      "# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :shape_msgs/Mesh "1ffdae9486cd3316a121c578b47a85cc")


