;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::Marker)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'Marker (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::MARKER")
  (make-package "VISUALIZATION_MSGS::MARKER"))

(in-package "ROS")
;;//! \htmlinclude Marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ARROW*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*ARROW* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*ARROW* 0)
(intern "*CUBE*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*CUBE* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*CUBE* 1)
(intern "*SPHERE*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*SPHERE* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*SPHERE* 2)
(intern "*CYLINDER*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*CYLINDER* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*CYLINDER* 3)
(intern "*LINE_STRIP*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*LINE_STRIP* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*LINE_STRIP* 4)
(intern "*LINE_LIST*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*LINE_LIST* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*LINE_LIST* 5)
(intern "*CUBE_LIST*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*CUBE_LIST* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*CUBE_LIST* 6)
(intern "*SPHERE_LIST*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*SPHERE_LIST* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*SPHERE_LIST* 7)
(intern "*POINTS*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*POINTS* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*POINTS* 8)
(intern "*TEXT_VIEW_FACING*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*TEXT_VIEW_FACING* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*TEXT_VIEW_FACING* 9)
(intern "*MESH_RESOURCE*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*MESH_RESOURCE* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*MESH_RESOURCE* 10)
(intern "*TRIANGLE_LIST*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*TRIANGLE_LIST* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*TRIANGLE_LIST* 11)
(intern "*ADD*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*ADD* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*ADD* 0)
(intern "*MODIFY*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*MODIFY* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*MODIFY* 0)
(intern "*DELETE*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*DELETE* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*DELETE* 2)
(intern "*DELETEALL*" (find-package "VISUALIZATION_MSGS::MARKER"))
(shadow '*DELETEALL* (find-package "VISUALIZATION_MSGS::MARKER"))
(defconstant visualization_msgs::Marker::*DELETEALL* 3)
(defclass visualization_msgs::Marker
  :super ros::object
  :slots (_header _ns _id _type _action _pose _scale _color _lifetime _frame_locked _points _colors _text _mesh_resource _mesh_use_embedded_materials ))

(defmethod visualization_msgs::Marker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ns __ns) "")
    ((:id __id) 0)
    ((:type __type) 0)
    ((:action __action) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:scale __scale) (instance geometry_msgs::Vector3 :init))
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:lifetime __lifetime) (instance ros::time :init))
    ((:frame_locked __frame_locked) nil)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:colors __colors) (let (r) (dotimes (i 0) (push (instance std_msgs::ColorRGBA :init) r)) r))
    ((:text __text) "")
    ((:mesh_resource __mesh_resource) "")
    ((:mesh_use_embedded_materials __mesh_use_embedded_materials) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ns (string __ns))
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _action (round __action))
   (setq _pose __pose)
   (setq _scale __scale)
   (setq _color __color)
   (setq _lifetime __lifetime)
   (setq _frame_locked __frame_locked)
   (setq _points __points)
   (setq _colors __colors)
   (setq _text (string __text))
   (setq _mesh_resource (string __mesh_resource))
   (setq _mesh_use_embedded_materials __mesh_use_embedded_materials)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:scale
   (&rest __scale)
   (if (keywordp (car __scale))
       (send* _scale __scale)
     (progn
       (if __scale (setq _scale (car __scale)))
       _scale)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:lifetime
   (&optional __lifetime)
   (if __lifetime (setq _lifetime __lifetime)) _lifetime)
  (:frame_locked
   (&optional __frame_locked)
   (if __frame_locked (setq _frame_locked __frame_locked)) _frame_locked)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:mesh_resource
   (&optional __mesh_resource)
   (if __mesh_resource (setq _mesh_resource __mesh_resource)) _mesh_resource)
  (:mesh_use_embedded_materials
   (&optional __mesh_use_embedded_materials)
   (if __mesh_use_embedded_materials (setq _mesh_use_embedded_materials __mesh_use_embedded_materials)) _mesh_use_embedded_materials)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ns
    4 (length _ns)
    ;; int32 _id
    4
    ;; int32 _type
    4
    ;; int32 _action
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _scale
    (send _scale :serialization-length)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; duration _lifetime
    8
    ;; bool _frame_locked
    1
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/ColorRGBA[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ;; string _text
    4 (length _text)
    ;; string _mesh_resource
    4 (length _mesh_resource)
    ;; bool _mesh_use_embedded_materials
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _action
       (write-long _action s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _scale
       (send _scale :serialize s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; duration _lifetime
       (write-long (send _lifetime :sec) s) (write-long (send _lifetime :nsec) s)
     ;; bool _frame_locked
       (if _frame_locked (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; std_msgs/ColorRGBA[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _mesh_resource
       (write-long (length _mesh_resource) s) (princ _mesh_resource s)
     ;; bool _mesh_use_embedded_materials
       (if _mesh_use_embedded_materials (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _scale
     (send _scale :deserialize buf ptr-) (incf ptr- (send _scale :serialization-length))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; duration _lifetime
     (send _lifetime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _lifetime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _frame_locked
     (setq _frame_locked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/ColorRGBA[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mesh_resource
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mesh_resource (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _mesh_use_embedded_materials
     (setq _mesh_use_embedded_materials (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get visualization_msgs::Marker :md5sum-) "4048c9de2a16f4ae8e0538085ebf1b97")
(setf (get visualization_msgs::Marker :datatype-) "visualization_msgs/Marker")
(setf (get visualization_msgs::Marker :definition-)
      "# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :visualization_msgs/Marker "4048c9de2a16f4ae8e0538085ebf1b97")


