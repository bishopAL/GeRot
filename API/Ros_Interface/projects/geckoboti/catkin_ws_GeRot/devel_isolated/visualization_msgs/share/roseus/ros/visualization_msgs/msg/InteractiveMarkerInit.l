;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::InteractiveMarkerInit)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'InteractiveMarkerInit (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERINIT")
  (make-package "VISUALIZATION_MSGS::INTERACTIVEMARKERINIT"))

(in-package "ROS")
;;//! \htmlinclude InteractiveMarkerInit.msg.html


(defclass visualization_msgs::InteractiveMarkerInit
  :super ros::object
  :slots (_server_id _seq_num _markers ))

(defmethod visualization_msgs::InteractiveMarkerInit
  (:init
   (&key
    ((:server_id __server_id) "")
    ((:seq_num __seq_num) 0)
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance visualization_msgs::InteractiveMarker :init) r)) r))
    )
   (send-super :init)
   (setq _server_id (string __server_id))
   (setq _seq_num (round __seq_num))
   (setq _markers __markers)
   self)
  (:server_id
   (&optional __server_id)
   (if __server_id (setq _server_id __server_id)) _server_id)
  (:seq_num
   (&optional __seq_num)
   (if __seq_num (setq _seq_num __seq_num)) _seq_num)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; string _server_id
    4 (length _server_id)
    ;; uint64 _seq_num
    8
    ;; visualization_msgs/InteractiveMarker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _server_id
       (write-long (length _server_id) s) (princ _server_id s)
     ;; uint64 _seq_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seq_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seq_num) (= (length (_seq_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seq_num . bv) 0) 0) s)
              (write-long (ash (elt (_seq_num . bv) 1) -1) s))
             ((and (class _seq_num) (= (length (_seq_num . bv)) 1)) ;; big1
              (write-long (elt (_seq_num . bv) 0) s)
              (write-long (if (>= _seq_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seq_num s)(write-long (if (>= _seq_num 0) 0 #xffffffff) s)))
     ;; visualization_msgs/InteractiveMarker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _server_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _server_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _seq_num
     
#+(or :alpha :irix6 :x86_64)
      (setf _seq_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seq_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; visualization_msgs/InteractiveMarker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance visualization_msgs::InteractiveMarker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visualization_msgs::InteractiveMarkerInit :md5sum-) "d5f2c5045a72456d228676ab91048734")
(setf (get visualization_msgs::InteractiveMarkerInit :datatype-) "visualization_msgs/InteractiveMarkerInit")
(setf (get visualization_msgs::InteractiveMarkerInit :definition-)
      "# Identifying string. Must be unique in the topic namespace
# that this server works on.
string server_id

# Sequence number.
# The client will use this to detect if it has missed a subsequent
# update.  Every update message will have the same sequence number as
# an init message.  Clients will likely want to unsubscribe from the
# init topic after a successful initialization to avoid receiving
# duplicate data.
uint64 seq_num

# All markers.
InteractiveMarker[] markers

================================================================================
MSG: visualization_msgs/InteractiveMarker
# Time/frame info.
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



(provide :visualization_msgs/InteractiveMarkerInit "d5f2c5045a72456d228676ab91048734")


