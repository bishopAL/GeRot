;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::InteractiveMarkerControl)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'InteractiveMarkerControl (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL")
  (make-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))

(in-package "ROS")
;;//! \htmlinclude InteractiveMarkerControl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*INHERIT*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*INHERIT* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*INHERIT* 0)
(intern "*FIXED*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*FIXED* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*FIXED* 1)
(intern "*VIEW_FACING*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*VIEW_FACING* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*VIEW_FACING* 2)
(intern "*NONE*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*NONE* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*NONE* 0)
(intern "*MENU*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MENU* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MENU* 1)
(intern "*BUTTON*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*BUTTON* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*BUTTON* 2)
(intern "*MOVE_AXIS*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MOVE_AXIS* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MOVE_AXIS* 3)
(intern "*MOVE_PLANE*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MOVE_PLANE* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MOVE_PLANE* 4)
(intern "*ROTATE_AXIS*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*ROTATE_AXIS* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*ROTATE_AXIS* 5)
(intern "*MOVE_ROTATE*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MOVE_ROTATE* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MOVE_ROTATE* 6)
(intern "*MOVE_3D*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MOVE_3D* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MOVE_3D* 7)
(intern "*ROTATE_3D*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*ROTATE_3D* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*ROTATE_3D* 8)
(intern "*MOVE_ROTATE_3D*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(shadow '*MOVE_ROTATE_3D* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERCONTROL"))
(defconstant visualization_msgs::InteractiveMarkerControl::*MOVE_ROTATE_3D* 9)
(defclass visualization_msgs::InteractiveMarkerControl
  :super ros::object
  :slots (_name _orientation _orientation_mode _interaction_mode _always_visible _markers _independent_marker_orientation _description ))

(defmethod visualization_msgs::InteractiveMarkerControl
  (:init
   (&key
    ((:name __name) "")
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:orientation_mode __orientation_mode) 0)
    ((:interaction_mode __interaction_mode) 0)
    ((:always_visible __always_visible) nil)
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance visualization_msgs::Marker :init) r)) r))
    ((:independent_marker_orientation __independent_marker_orientation) nil)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _orientation __orientation)
   (setq _orientation_mode (round __orientation_mode))
   (setq _interaction_mode (round __interaction_mode))
   (setq _always_visible __always_visible)
   (setq _markers __markers)
   (setq _independent_marker_orientation __independent_marker_orientation)
   (setq _description (string __description))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:orientation_mode
   (&optional __orientation_mode)
   (if __orientation_mode (setq _orientation_mode __orientation_mode)) _orientation_mode)
  (:interaction_mode
   (&optional __interaction_mode)
   (if __interaction_mode (setq _interaction_mode __interaction_mode)) _interaction_mode)
  (:always_visible
   (&optional __always_visible)
   (if __always_visible (setq _always_visible __always_visible)) _always_visible)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:independent_marker_orientation
   (&optional __independent_marker_orientation)
   (if __independent_marker_orientation (setq _independent_marker_orientation __independent_marker_orientation)) _independent_marker_orientation)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; uint8 _orientation_mode
    1
    ;; uint8 _interaction_mode
    1
    ;; bool _always_visible
    1
    ;; visualization_msgs/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ;; bool _independent_marker_orientation
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; uint8 _orientation_mode
       (write-byte _orientation_mode s)
     ;; uint8 _interaction_mode
       (write-byte _interaction_mode s)
     ;; bool _always_visible
       (if _always_visible (write-byte -1 s) (write-byte 0 s))
     ;; visualization_msgs/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;; bool _independent_marker_orientation
       (if _independent_marker_orientation (write-byte -1 s) (write-byte 0 s))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; uint8 _orientation_mode
     (setq _orientation_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _interaction_mode
     (setq _interaction_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _always_visible
     (setq _always_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; visualization_msgs/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance visualization_msgs::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _independent_marker_orientation
     (setq _independent_marker_orientation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get visualization_msgs::InteractiveMarkerControl :md5sum-) "b3c81e785788195d1840b86c28da1aac")
(setf (get visualization_msgs::InteractiveMarkerControl :datatype-) "visualization_msgs/InteractiveMarkerControl")
(setf (get visualization_msgs::InteractiveMarkerControl :definition-)
      "# Represents a control that is to be displayed together with an interactive marker

# Identifying string for this control.
# You need to assign a unique value to this to receive feedback from the GUI
# on what actions the user performs on this control (e.g. a button click).
string name


# Defines the local coordinate frame (relative to the pose of the parent
# interactive marker) in which is being rotated and translated.
# Default: Identity
geometry_msgs/Quaternion orientation


# Orientation mode: controls how orientation changes.
# INHERIT: Follow orientation of interactive marker
# FIXED: Keep orientation fixed at initial state
# VIEW_FACING: Align y-z plane with screen (x: forward, y:left, z:up).
uint8 INHERIT = 0 
uint8 FIXED = 1
uint8 VIEW_FACING = 2

uint8 orientation_mode

# Interaction mode for this control
# 
# NONE: This control is only meant for visualization; no context menu.
# MENU: Like NONE, but right-click menu is active.
# BUTTON: Element can be left-clicked.
# MOVE_AXIS: Translate along local x-axis.
# MOVE_PLANE: Translate in local y-z plane.
# ROTATE_AXIS: Rotate around local x-axis.
# MOVE_ROTATE: Combines MOVE_PLANE and ROTATE_AXIS.
uint8 NONE = 0 
uint8 MENU = 1
uint8 BUTTON = 2
uint8 MOVE_AXIS = 3 
uint8 MOVE_PLANE = 4
uint8 ROTATE_AXIS = 5
uint8 MOVE_ROTATE = 6
# \"3D\" interaction modes work with the mouse+SHIFT+CTRL or with 3D cursors.
# MOVE_3D: Translate freely in 3D space.
# ROTATE_3D: Rotate freely in 3D space about the origin of parent frame.
# MOVE_ROTATE_3D: Full 6-DOF freedom of translation and rotation about the cursor origin.
uint8 MOVE_3D = 7
uint8 ROTATE_3D = 8
uint8 MOVE_ROTATE_3D = 9

uint8 interaction_mode


# If true, the contained markers will also be visible
# when the gui is not in interactive mode.
bool always_visible


# Markers to be displayed as custom visual representation.
# Leave this empty to use the default control handles.
#
# Note: 
# - The markers can be defined in an arbitrary coordinate frame,
#   but will be transformed into the local frame of the interactive marker.
# - If the header of a marker is empty, its pose will be interpreted as 
#   relative to the pose of the parent interactive marker.
Marker[] markers


# In VIEW_FACING mode, set this to true if you don't want the markers
# to be aligned with the camera view point. The markers will show up
# as in INHERIT mode.
bool independent_marker_orientation


# Short description (< 40 characters) of what this control does,
# e.g. \"Move the robot\". 
# Default: A generic description based on the interaction mode
string description

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

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



(provide :visualization_msgs/InteractiveMarkerControl "b3c81e785788195d1840b86c28da1aac")


