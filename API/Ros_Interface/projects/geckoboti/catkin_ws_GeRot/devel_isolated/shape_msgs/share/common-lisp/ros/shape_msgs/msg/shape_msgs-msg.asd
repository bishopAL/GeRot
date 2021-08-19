
(cl:in-package :asdf)

(defsystem "shape_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Mesh" :depends-on ("_package_Mesh"))
    (:file "_package_Mesh" :depends-on ("_package"))
    (:file "MeshTriangle" :depends-on ("_package_MeshTriangle"))
    (:file "_package_MeshTriangle" :depends-on ("_package"))
    (:file "Plane" :depends-on ("_package_Plane"))
    (:file "_package_Plane" :depends-on ("_package"))
    (:file "SolidPrimitive" :depends-on ("_package_SolidPrimitive"))
    (:file "_package_SolidPrimitive" :depends-on ("_package"))
  ))