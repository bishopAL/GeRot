; Auto-generated. Do not edit!


(cl:in-package visualization_msgs-msg)


;//! \htmlinclude MenuEntry.msg.html

(cl:defclass <MenuEntry> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0)
   (title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (command_type
    :reader command_type
    :initarg :command_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MenuEntry (<MenuEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MenuEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MenuEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_msgs-msg:<MenuEntry> is deprecated: use visualization_msgs-msg:MenuEntry instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MenuEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:id-val is deprecated.  Use visualization_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <MenuEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:parent_id-val is deprecated.  Use visualization_msgs-msg:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <MenuEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:title-val is deprecated.  Use visualization_msgs-msg:title instead.")
  (title m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MenuEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:command-val is deprecated.  Use visualization_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <MenuEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:command_type-val is deprecated.  Use visualization_msgs-msg:command_type instead.")
  (command_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MenuEntry>)))
    "Constants for message type '<MenuEntry>"
  '((:FEEDBACK . 0)
    (:ROSRUN . 1)
    (:ROSLAUNCH . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MenuEntry)))
    "Constants for message type 'MenuEntry"
  '((:FEEDBACK . 0)
    (:ROSRUN . 1)
    (:ROSLAUNCH . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MenuEntry>) ostream)
  "Serializes a message object of type '<MenuEntry>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parent_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MenuEntry>) istream)
  "Deserializes a message object of type '<MenuEntry>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MenuEntry>)))
  "Returns string type for a message object of type '<MenuEntry>"
  "visualization_msgs/MenuEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MenuEntry)))
  "Returns string type for a message object of type 'MenuEntry"
  "visualization_msgs/MenuEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MenuEntry>)))
  "Returns md5sum for a message object of type '<MenuEntry>"
  "b90ec63024573de83b57aa93eb39be2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MenuEntry)))
  "Returns md5sum for a message object of type 'MenuEntry"
  "b90ec63024573de83b57aa93eb39be2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MenuEntry>)))
  "Returns full string definition for message of type '<MenuEntry>"
  (cl:format cl:nil "# MenuEntry message.~%~%# Each InteractiveMarker message has an array of MenuEntry messages.~%# A collection of MenuEntries together describe a~%# menu/submenu/subsubmenu/etc tree, though they are stored in a flat~%# array.  The tree structure is represented by giving each menu entry~%# an ID number and a \"parent_id\" field.  Top-level entries are the~%# ones with parent_id = 0.  Menu entries are ordered within their~%# level the same way they are ordered in the containing array.  Parent~%# entries must appear before their children.~%~%# Example:~%# - id = 3~%#   parent_id = 0~%#   title = \"fun\"~%# - id = 2~%#   parent_id = 0~%#   title = \"robot\"~%# - id = 4~%#   parent_id = 2~%#   title = \"pr2\"~%# - id = 5~%#   parent_id = 2~%#   title = \"turtle\"~%#~%# Gives a menu tree like this:~%#  - fun~%#  - robot~%#    - pr2~%#    - turtle~%~%# ID is a number for each menu entry.  Must be unique within the~%# control, and should never be 0.~%uint32 id~%~%# ID of the parent of this menu entry, if it is a submenu.  If this~%# menu entry is a top-level entry, set parent_id to 0.~%uint32 parent_id~%~%# menu / entry title~%string title~%~%# Arguments to command indicated by command_type (below)~%string command~%~%# Command_type stores the type of response desired when this menu~%# entry is clicked.~%# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.~%# ROSRUN: execute \"rosrun\" with arguments given in the command field (above).~%# ROSLAUNCH: execute \"roslaunch\" with arguments given in the command field (above).~%uint8 FEEDBACK=0~%uint8 ROSRUN=1~%uint8 ROSLAUNCH=2~%uint8 command_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MenuEntry)))
  "Returns full string definition for message of type 'MenuEntry"
  (cl:format cl:nil "# MenuEntry message.~%~%# Each InteractiveMarker message has an array of MenuEntry messages.~%# A collection of MenuEntries together describe a~%# menu/submenu/subsubmenu/etc tree, though they are stored in a flat~%# array.  The tree structure is represented by giving each menu entry~%# an ID number and a \"parent_id\" field.  Top-level entries are the~%# ones with parent_id = 0.  Menu entries are ordered within their~%# level the same way they are ordered in the containing array.  Parent~%# entries must appear before their children.~%~%# Example:~%# - id = 3~%#   parent_id = 0~%#   title = \"fun\"~%# - id = 2~%#   parent_id = 0~%#   title = \"robot\"~%# - id = 4~%#   parent_id = 2~%#   title = \"pr2\"~%# - id = 5~%#   parent_id = 2~%#   title = \"turtle\"~%#~%# Gives a menu tree like this:~%#  - fun~%#  - robot~%#    - pr2~%#    - turtle~%~%# ID is a number for each menu entry.  Must be unique within the~%# control, and should never be 0.~%uint32 id~%~%# ID of the parent of this menu entry, if it is a submenu.  If this~%# menu entry is a top-level entry, set parent_id to 0.~%uint32 parent_id~%~%# menu / entry title~%string title~%~%# Arguments to command indicated by command_type (below)~%string command~%~%# Command_type stores the type of response desired when this menu~%# entry is clicked.~%# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.~%# ROSRUN: execute \"rosrun\" with arguments given in the command field (above).~%# ROSLAUNCH: execute \"roslaunch\" with arguments given in the command field (above).~%uint8 FEEDBACK=0~%uint8 ROSRUN=1~%uint8 ROSLAUNCH=2~%uint8 command_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MenuEntry>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'title))
     4 (cl:length (cl:slot-value msg 'command))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MenuEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'MenuEntry
    (cl:cons ':id (id msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':title (title msg))
    (cl:cons ':command (command msg))
    (cl:cons ':command_type (command_type msg))
))
