;; Auto-generated. Do not edit!


(when (boundp 'shape_msgs::SolidPrimitive)
  (if (not (find-package "SHAPE_MSGS"))
    (make-package "SHAPE_MSGS"))
  (shadow 'SolidPrimitive (find-package "SHAPE_MSGS")))
(unless (find-package "SHAPE_MSGS::SOLIDPRIMITIVE")
  (make-package "SHAPE_MSGS::SOLIDPRIMITIVE"))

(in-package "ROS")
;;//! \htmlinclude SolidPrimitive.msg.html


(intern "*BOX*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*BOX* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*BOX* 1)
(intern "*SPHERE*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*SPHERE* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*SPHERE* 2)
(intern "*CYLINDER*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CYLINDER* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CYLINDER* 3)
(intern "*CONE*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CONE* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CONE* 4)
(intern "*BOX_X*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*BOX_X* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*BOX_X* 0)
(intern "*BOX_Y*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*BOX_Y* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*BOX_Y* 1)
(intern "*BOX_Z*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*BOX_Z* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*BOX_Z* 2)
(intern "*SPHERE_RADIUS*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*SPHERE_RADIUS* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*SPHERE_RADIUS* 0)
(intern "*CYLINDER_HEIGHT*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CYLINDER_HEIGHT* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CYLINDER_HEIGHT* 0)
(intern "*CYLINDER_RADIUS*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CYLINDER_RADIUS* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CYLINDER_RADIUS* 1)
(intern "*CONE_HEIGHT*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CONE_HEIGHT* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CONE_HEIGHT* 0)
(intern "*CONE_RADIUS*" (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(shadow '*CONE_RADIUS* (find-package "SHAPE_MSGS::SOLIDPRIMITIVE"))
(defconstant shape_msgs::SolidPrimitive::*CONE_RADIUS* 1)
(defclass shape_msgs::SolidPrimitive
  :super ros::object
  :slots (_type _dimensions ))

(defmethod shape_msgs::SolidPrimitive
  (:init
   (&key
    ((:type __type) 0)
    ((:dimensions __dimensions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _dimensions __dimensions)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:dimensions
   (&optional __dimensions)
   (if __dimensions (setq _dimensions __dimensions)) _dimensions)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float64[] _dimensions
    (* 8    (length _dimensions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _dimensions
     (write-long (length _dimensions) s)
     (dotimes (i (length _dimensions))
       (sys::poke (elt _dimensions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _dimensions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dimensions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dimensions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get shape_msgs::SolidPrimitive :md5sum-) "d8f8cbc74c5ff283fca29569ccefb45d")
(setf (get shape_msgs::SolidPrimitive :datatype-) "shape_msgs/SolidPrimitive")
(setf (get shape_msgs::SolidPrimitive :definition-)
      "# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

")



(provide :shape_msgs/SolidPrimitive "d8f8cbc74c5ff283fca29569ccefb45d")


