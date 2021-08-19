; Auto-generated. Do not edit!


(cl:in-package visualization_msgs-msg)


;//! \htmlinclude InteractiveMarker.msg.html

(cl:defclass <InteractiveMarker> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0)
   (menu_entries
    :reader menu_entries
    :initarg :menu_entries
    :type (cl:vector visualization_msgs-msg:MenuEntry)
   :initform (cl:make-array 0 :element-type 'visualization_msgs-msg:MenuEntry :initial-element (cl:make-instance 'visualization_msgs-msg:MenuEntry)))
   (controls
    :reader controls
    :initarg :controls
    :type (cl:vector visualization_msgs-msg:InteractiveMarkerControl)
   :initform (cl:make-array 0 :element-type 'visualization_msgs-msg:InteractiveMarkerControl :initial-element (cl:make-instance 'visualization_msgs-msg:InteractiveMarkerControl))))
)

(cl:defclass InteractiveMarker (<InteractiveMarker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractiveMarker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractiveMarker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_msgs-msg:<InteractiveMarker> is deprecated: use visualization_msgs-msg:InteractiveMarker instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:header-val is deprecated.  Use visualization_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:pose-val is deprecated.  Use visualization_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:name-val is deprecated.  Use visualization_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:description-val is deprecated.  Use visualization_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:scale-val is deprecated.  Use visualization_msgs-msg:scale instead.")
  (scale m))

(cl:ensure-generic-function 'menu_entries-val :lambda-list '(m))
(cl:defmethod menu_entries-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:menu_entries-val is deprecated.  Use visualization_msgs-msg:menu_entries instead.")
  (menu_entries m))

(cl:ensure-generic-function 'controls-val :lambda-list '(m))
(cl:defmethod controls-val ((m <InteractiveMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:controls-val is deprecated.  Use visualization_msgs-msg:controls instead.")
  (controls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractiveMarker>) ostream)
  "Serializes a message object of type '<InteractiveMarker>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'menu_entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'menu_entries))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractiveMarker>) istream)
  "Deserializes a message object of type '<InteractiveMarker>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'menu_entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'menu_entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'visualization_msgs-msg:MenuEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'visualization_msgs-msg:InteractiveMarkerControl))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractiveMarker>)))
  "Returns string type for a message object of type '<InteractiveMarker>"
  "visualization_msgs/InteractiveMarker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractiveMarker)))
  "Returns string type for a message object of type 'InteractiveMarker"
  "visualization_msgs/InteractiveMarker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractiveMarker>)))
  "Returns md5sum for a message object of type '<InteractiveMarker>"
  "dd86d22909d5a3364b384492e35c10af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractiveMarker)))
  "Returns md5sum for a message object of type 'InteractiveMarker"
  "dd86d22909d5a3364b384492e35c10af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractiveMarker>)))
  "Returns full string definition for message of type '<InteractiveMarker>"
  (cl:format cl:nil "# Time/frame info.~%# If header.time is set to 0, the marker will be retransformed into~%# its frame on each timestep. You will receive the pose feedback~%# in the same frame.~%# Otherwise, you might receive feedback in a different frame.~%# For rviz, this will be the current 'fixed frame' set by the user.~%Header header~%~%# Initial pose. Also, defines the pivot point for rotations.~%geometry_msgs/Pose pose~%~%# Identifying string. Must be globally unique in~%# the topic that this message is sent through.~%string name~%~%# Short description (< 40 characters).~%string description~%~%# Scale to be used for default controls (default=1).~%float32 scale~%~%# All menu and submenu entries associated with this marker.~%MenuEntry[] menu_entries~%~%# List of controls displayed for this marker.~%InteractiveMarkerControl[] controls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: visualization_msgs/MenuEntry~%# MenuEntry message.~%~%# Each InteractiveMarker message has an array of MenuEntry messages.~%# A collection of MenuEntries together describe a~%# menu/submenu/subsubmenu/etc tree, though they are stored in a flat~%# array.  The tree structure is represented by giving each menu entry~%# an ID number and a \"parent_id\" field.  Top-level entries are the~%# ones with parent_id = 0.  Menu entries are ordered within their~%# level the same way they are ordered in the containing array.  Parent~%# entries must appear before their children.~%~%# Example:~%# - id = 3~%#   parent_id = 0~%#   title = \"fun\"~%# - id = 2~%#   parent_id = 0~%#   title = \"robot\"~%# - id = 4~%#   parent_id = 2~%#   title = \"pr2\"~%# - id = 5~%#   parent_id = 2~%#   title = \"turtle\"~%#~%# Gives a menu tree like this:~%#  - fun~%#  - robot~%#    - pr2~%#    - turtle~%~%# ID is a number for each menu entry.  Must be unique within the~%# control, and should never be 0.~%uint32 id~%~%# ID of the parent of this menu entry, if it is a submenu.  If this~%# menu entry is a top-level entry, set parent_id to 0.~%uint32 parent_id~%~%# menu / entry title~%string title~%~%# Arguments to command indicated by command_type (below)~%string command~%~%# Command_type stores the type of response desired when this menu~%# entry is clicked.~%# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.~%# ROSRUN: execute \"rosrun\" with arguments given in the command field (above).~%# ROSLAUNCH: execute \"roslaunch\" with arguments given in the command field (above).~%uint8 FEEDBACK=0~%uint8 ROSRUN=1~%uint8 ROSLAUNCH=2~%uint8 command_type~%~%================================================================================~%MSG: visualization_msgs/InteractiveMarkerControl~%# Represents a control that is to be displayed together with an interactive marker~%~%# Identifying string for this control.~%# You need to assign a unique value to this to receive feedback from the GUI~%# on what actions the user performs on this control (e.g. a button click).~%string name~%~%~%# Defines the local coordinate frame (relative to the pose of the parent~%# interactive marker) in which is being rotated and translated.~%# Default: Identity~%geometry_msgs/Quaternion orientation~%~%~%# Orientation mode: controls how orientation changes.~%# INHERIT: Follow orientation of interactive marker~%# FIXED: Keep orientation fixed at initial state~%# VIEW_FACING: Align y-z plane with screen (x: forward, y:left, z:up).~%uint8 INHERIT = 0 ~%uint8 FIXED = 1~%uint8 VIEW_FACING = 2~%~%uint8 orientation_mode~%~%# Interaction mode for this control~%# ~%# NONE: This control is only meant for visualization; no context menu.~%# MENU: Like NONE, but right-click menu is active.~%# BUTTON: Element can be left-clicked.~%# MOVE_AXIS: Translate along local x-axis.~%# MOVE_PLANE: Translate in local y-z plane.~%# ROTATE_AXIS: Rotate around local x-axis.~%# MOVE_ROTATE: Combines MOVE_PLANE and ROTATE_AXIS.~%uint8 NONE = 0 ~%uint8 MENU = 1~%uint8 BUTTON = 2~%uint8 MOVE_AXIS = 3 ~%uint8 MOVE_PLANE = 4~%uint8 ROTATE_AXIS = 5~%uint8 MOVE_ROTATE = 6~%# \"3D\" interaction modes work with the mouse+SHIFT+CTRL or with 3D cursors.~%# MOVE_3D: Translate freely in 3D space.~%# ROTATE_3D: Rotate freely in 3D space about the origin of parent frame.~%# MOVE_ROTATE_3D: Full 6-DOF freedom of translation and rotation about the cursor origin.~%uint8 MOVE_3D = 7~%uint8 ROTATE_3D = 8~%uint8 MOVE_ROTATE_3D = 9~%~%uint8 interaction_mode~%~%~%# If true, the contained markers will also be visible~%# when the gui is not in interactive mode.~%bool always_visible~%~%~%# Markers to be displayed as custom visual representation.~%# Leave this empty to use the default control handles.~%#~%# Note: ~%# - The markers can be defined in an arbitrary coordinate frame,~%#   but will be transformed into the local frame of the interactive marker.~%# - If the header of a marker is empty, its pose will be interpreted as ~%#   relative to the pose of the parent interactive marker.~%Marker[] markers~%~%~%# In VIEW_FACING mode, set this to true if you don't want the markers~%# to be aligned with the camera view point. The markers will show up~%# as in INHERIT mode.~%bool independent_marker_orientation~%~%~%# Short description (< 40 characters) of what this control does,~%# e.g. \"Move the robot\". ~%# Default: A generic description based on the interaction mode~%string description~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractiveMarker)))
  "Returns full string definition for message of type 'InteractiveMarker"
  (cl:format cl:nil "# Time/frame info.~%# If header.time is set to 0, the marker will be retransformed into~%# its frame on each timestep. You will receive the pose feedback~%# in the same frame.~%# Otherwise, you might receive feedback in a different frame.~%# For rviz, this will be the current 'fixed frame' set by the user.~%Header header~%~%# Initial pose. Also, defines the pivot point for rotations.~%geometry_msgs/Pose pose~%~%# Identifying string. Must be globally unique in~%# the topic that this message is sent through.~%string name~%~%# Short description (< 40 characters).~%string description~%~%# Scale to be used for default controls (default=1).~%float32 scale~%~%# All menu and submenu entries associated with this marker.~%MenuEntry[] menu_entries~%~%# List of controls displayed for this marker.~%InteractiveMarkerControl[] controls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: visualization_msgs/MenuEntry~%# MenuEntry message.~%~%# Each InteractiveMarker message has an array of MenuEntry messages.~%# A collection of MenuEntries together describe a~%# menu/submenu/subsubmenu/etc tree, though they are stored in a flat~%# array.  The tree structure is represented by giving each menu entry~%# an ID number and a \"parent_id\" field.  Top-level entries are the~%# ones with parent_id = 0.  Menu entries are ordered within their~%# level the same way they are ordered in the containing array.  Parent~%# entries must appear before their children.~%~%# Example:~%# - id = 3~%#   parent_id = 0~%#   title = \"fun\"~%# - id = 2~%#   parent_id = 0~%#   title = \"robot\"~%# - id = 4~%#   parent_id = 2~%#   title = \"pr2\"~%# - id = 5~%#   parent_id = 2~%#   title = \"turtle\"~%#~%# Gives a menu tree like this:~%#  - fun~%#  - robot~%#    - pr2~%#    - turtle~%~%# ID is a number for each menu entry.  Must be unique within the~%# control, and should never be 0.~%uint32 id~%~%# ID of the parent of this menu entry, if it is a submenu.  If this~%# menu entry is a top-level entry, set parent_id to 0.~%uint32 parent_id~%~%# menu / entry title~%string title~%~%# Arguments to command indicated by command_type (below)~%string command~%~%# Command_type stores the type of response desired when this menu~%# entry is clicked.~%# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.~%# ROSRUN: execute \"rosrun\" with arguments given in the command field (above).~%# ROSLAUNCH: execute \"roslaunch\" with arguments given in the command field (above).~%uint8 FEEDBACK=0~%uint8 ROSRUN=1~%uint8 ROSLAUNCH=2~%uint8 command_type~%~%================================================================================~%MSG: visualization_msgs/InteractiveMarkerControl~%# Represents a control that is to be displayed together with an interactive marker~%~%# Identifying string for this control.~%# You need to assign a unique value to this to receive feedback from the GUI~%# on what actions the user performs on this control (e.g. a button click).~%string name~%~%~%# Defines the local coordinate frame (relative to the pose of the parent~%# interactive marker) in which is being rotated and translated.~%# Default: Identity~%geometry_msgs/Quaternion orientation~%~%~%# Orientation mode: controls how orientation changes.~%# INHERIT: Follow orientation of interactive marker~%# FIXED: Keep orientation fixed at initial state~%# VIEW_FACING: Align y-z plane with screen (x: forward, y:left, z:up).~%uint8 INHERIT = 0 ~%uint8 FIXED = 1~%uint8 VIEW_FACING = 2~%~%uint8 orientation_mode~%~%# Interaction mode for this control~%# ~%# NONE: This control is only meant for visualization; no context menu.~%# MENU: Like NONE, but right-click menu is active.~%# BUTTON: Element can be left-clicked.~%# MOVE_AXIS: Translate along local x-axis.~%# MOVE_PLANE: Translate in local y-z plane.~%# ROTATE_AXIS: Rotate around local x-axis.~%# MOVE_ROTATE: Combines MOVE_PLANE and ROTATE_AXIS.~%uint8 NONE = 0 ~%uint8 MENU = 1~%uint8 BUTTON = 2~%uint8 MOVE_AXIS = 3 ~%uint8 MOVE_PLANE = 4~%uint8 ROTATE_AXIS = 5~%uint8 MOVE_ROTATE = 6~%# \"3D\" interaction modes work with the mouse+SHIFT+CTRL or with 3D cursors.~%# MOVE_3D: Translate freely in 3D space.~%# ROTATE_3D: Rotate freely in 3D space about the origin of parent frame.~%# MOVE_ROTATE_3D: Full 6-DOF freedom of translation and rotation about the cursor origin.~%uint8 MOVE_3D = 7~%uint8 ROTATE_3D = 8~%uint8 MOVE_ROTATE_3D = 9~%~%uint8 interaction_mode~%~%~%# If true, the contained markers will also be visible~%# when the gui is not in interactive mode.~%bool always_visible~%~%~%# Markers to be displayed as custom visual representation.~%# Leave this empty to use the default control handles.~%#~%# Note: ~%# - The markers can be defined in an arbitrary coordinate frame,~%#   but will be transformed into the local frame of the interactive marker.~%# - If the header of a marker is empty, its pose will be interpreted as ~%#   relative to the pose of the parent interactive marker.~%Marker[] markers~%~%~%# In VIEW_FACING mode, set this to true if you don't want the markers~%# to be aligned with the camera view point. The markers will show up~%# as in INHERIT mode.~%bool independent_marker_orientation~%~%~%# Short description (< 40 characters) of what this control does,~%# e.g. \"Move the robot\". ~%# Default: A generic description based on the interaction mode~%string description~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractiveMarker>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'menu_entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractiveMarker>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractiveMarker
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':menu_entries (menu_entries msg))
    (cl:cons ':controls (controls msg))
))
