;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::InteractiveMarker)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'InteractiveMarker (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKER")
  (make-package "VISUALIZATION_MSGS::INTERACTIVEMARKER"))

(in-package "ROS")
;;//! \htmlinclude InteractiveMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_msgs::InteractiveMarker
  :super ros::object
  :slots (_header _pose _name _description _scale _menu_entries _controls ))

(defmethod visualization_msgs::InteractiveMarker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:name __name) "")
    ((:description __description) "")
    ((:scale __scale) 0.0)
    ((:menu_entries __menu_entries) (let (r) (dotimes (i 0) (push (instance visualization_msgs::MenuEntry :init) r)) r))
    ((:controls __controls) (let (r) (dotimes (i 0) (push (instance visualization_msgs::InteractiveMarkerControl :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _scale (float __scale))
   (setq _menu_entries __menu_entries)
   (setq _controls __controls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:menu_entries
   (&rest __menu_entries)
   (if (keywordp (car __menu_entries))
       (send* _menu_entries __menu_entries)
     (progn
       (if __menu_entries (setq _menu_entries (car __menu_entries)))
       _menu_entries)))
  (:controls
   (&rest __controls)
   (if (keywordp (car __controls))
       (send* _controls __controls)
     (progn
       (if __controls (setq _controls (car __controls)))
       _controls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; float32 _scale
    4
    ;; visualization_msgs/MenuEntry[] _menu_entries
    (apply #'+ (send-all _menu_entries :serialization-length)) 4
    ;; visualization_msgs/InteractiveMarkerControl[] _controls
    (apply #'+ (send-all _controls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; visualization_msgs/MenuEntry[] _menu_entries
     (write-long (length _menu_entries) s)
     (dolist (elem _menu_entries)
       (send elem :serialize s)
       )
     ;; visualization_msgs/InteractiveMarkerControl[] _controls
     (write-long (length _controls) s)
     (dolist (elem _controls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; visualization_msgs/MenuEntry[] _menu_entries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _menu_entries (let (r) (dotimes (i n) (push (instance visualization_msgs::MenuEntry :init) r)) r))
     (dolist (elem- _menu_entries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; visualization_msgs/InteractiveMarkerControl[] _controls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controls (let (r) (dotimes (i n) (push (instance visualization_msgs::InteractiveMarkerControl :init) r)) r))
     (dolist (elem- _controls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visualization_msgs::InteractiveMarker :md5sum-) "dd86d22909d5a3364b384492e35c10af")
(setf (get visualization_msgs::InteractiveMarker :datatype-) "visualization_msgs/InteractiveMarker")
(setf (get visualization_msgs::InteractiveMarker :definition-)
      "# Time/frame info.
# If header.time is set to 0, the marker will be retransformed into
# its frame on each timestep. You will receive the pose feedback
# in the same frame.
# Otherwise, you might receive feedback in a different frame.
# For rviz, this will be the current 'fixed frame' set by the user.
Header header

# Initial pose. Also, defines the pivot point for rotations.
geometry_msgs/Pose pose

# Identifying string. Must be globally unique in
# the topic that this message is sent through.
string name

# Short description (< 40 characters).
string description

# Scale to be used for default controls (default=1).
float32 scale

# All menu and submenu entries associated with this marker.
MenuEntry[] menu_entries

# List of controls displayed for this marker.
InteractiveMarkerControl[] controls

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
MSG: visualization_msgs/MenuEntry
# MenuEntry message.

# Each InteractiveMarker message has an array of MenuEntry messages.
# A collection of MenuEntries together describe a
# menu/submenu/subsubmenu/etc tree, though they are stored in a flat
# array.  The tree structure is represented by giving each menu entry
# an ID number and a \"parent_id\" field.  Top-level entries are the
# ones with parent_id = 0.  Menu entries are ordered within their
# level the same way they are ordered in the containing array.  Parent
# entries must appear before their children.

# Example:
# - id = 3
#   parent_id = 0
#   title = \"fun\"
# - id = 2
#   parent_id = 0
#   title = \"robot\"
# - id = 4
#   parent_id = 2
#   title = \"pr2\"
# - id = 5
#   parent_id = 2
#   title = \"turtle\"
#
# Gives a menu tree like this:
#  - fun
#  - robot
#    - pr2
#    - turtle

# ID is a number for each menu entry.  Must be unique within the
# control, and should never be 0.
uint32 id

# ID of the parent of this menu entry, if it is a submenu.  If this
# menu entry is a top-level entry, set parent_id to 0.
uint32 parent_id

# menu / entry title
string title

# Arguments to command indicated by command_type (below)
string command

# Command_type stores the type of response desired when this menu
# entry is clicked.
# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.
# ROSRUN: execute \"rosrun\" with arguments given in the command field (above).
# ROSLAUNCH: execute \"roslaunch\" with arguments given in the command field (above).
uint8 FEEDBACK=0
uint8 ROSRUN=1
uint8 ROSLAUNCH=2
uint8 command_type

================================================================================
MSG: visualization_msgs/InteractiveMarkerControl
# Represents a control that is to be displayed together with an interactive marker

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



(provide :visualization_msgs/InteractiveMarker "dd86d22909d5a3364b384492e35c10af")


