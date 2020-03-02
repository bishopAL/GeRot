; Auto-generated. Do not edit!


(cl:in-package visualization_msgs-msg)


;//! \htmlinclude InteractiveMarkerFeedback.msg.html

(cl:defclass <InteractiveMarkerFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (client_id
    :reader client_id
    :initarg :client_id
    :type cl:string
    :initform "")
   (marker_name
    :reader marker_name
    :initarg :marker_name
    :type cl:string
    :initform "")
   (control_name
    :reader control_name
    :initarg :control_name
    :type cl:string
    :initform "")
   (event_type
    :reader event_type
    :initarg :event_type
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (menu_entry_id
    :reader menu_entry_id
    :initarg :menu_entry_id
    :type cl:integer
    :initform 0)
   (mouse_point
    :reader mouse_point
    :initarg :mouse_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (mouse_point_valid
    :reader mouse_point_valid
    :initarg :mouse_point_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InteractiveMarkerFeedback (<InteractiveMarkerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractiveMarkerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractiveMarkerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_msgs-msg:<InteractiveMarkerFeedback> is deprecated: use visualization_msgs-msg:InteractiveMarkerFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:header-val is deprecated.  Use visualization_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'client_id-val :lambda-list '(m))
(cl:defmethod client_id-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:client_id-val is deprecated.  Use visualization_msgs-msg:client_id instead.")
  (client_id m))

(cl:ensure-generic-function 'marker_name-val :lambda-list '(m))
(cl:defmethod marker_name-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:marker_name-val is deprecated.  Use visualization_msgs-msg:marker_name instead.")
  (marker_name m))

(cl:ensure-generic-function 'control_name-val :lambda-list '(m))
(cl:defmethod control_name-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:control_name-val is deprecated.  Use visualization_msgs-msg:control_name instead.")
  (control_name m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:event_type-val is deprecated.  Use visualization_msgs-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:pose-val is deprecated.  Use visualization_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'menu_entry_id-val :lambda-list '(m))
(cl:defmethod menu_entry_id-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:menu_entry_id-val is deprecated.  Use visualization_msgs-msg:menu_entry_id instead.")
  (menu_entry_id m))

(cl:ensure-generic-function 'mouse_point-val :lambda-list '(m))
(cl:defmethod mouse_point-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:mouse_point-val is deprecated.  Use visualization_msgs-msg:mouse_point instead.")
  (mouse_point m))

(cl:ensure-generic-function 'mouse_point_valid-val :lambda-list '(m))
(cl:defmethod mouse_point_valid-val ((m <InteractiveMarkerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_msgs-msg:mouse_point_valid-val is deprecated.  Use visualization_msgs-msg:mouse_point_valid instead.")
  (mouse_point_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InteractiveMarkerFeedback>)))
    "Constants for message type '<InteractiveMarkerFeedback>"
  '((:KEEP_ALIVE . 0)
    (:POSE_UPDATE . 1)
    (:MENU_SELECT . 2)
    (:BUTTON_CLICK . 3)
    (:MOUSE_DOWN . 4)
    (:MOUSE_UP . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InteractiveMarkerFeedback)))
    "Constants for message type 'InteractiveMarkerFeedback"
  '((:KEEP_ALIVE . 0)
    (:POSE_UPDATE . 1)
    (:MENU_SELECT . 2)
    (:BUTTON_CLICK . 3)
    (:MOUSE_DOWN . 4)
    (:MOUSE_UP . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractiveMarkerFeedback>) ostream)
  "Serializes a message object of type '<InteractiveMarkerFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'client_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'client_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'marker_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'menu_entry_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'menu_entry_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'menu_entry_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'menu_entry_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouse_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mouse_point_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractiveMarkerFeedback>) istream)
  "Deserializes a message object of type '<InteractiveMarkerFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'client_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'client_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'menu_entry_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'menu_entry_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'menu_entry_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'menu_entry_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouse_point) istream)
    (cl:setf (cl:slot-value msg 'mouse_point_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractiveMarkerFeedback>)))
  "Returns string type for a message object of type '<InteractiveMarkerFeedback>"
  "visualization_msgs/InteractiveMarkerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractiveMarkerFeedback)))
  "Returns string type for a message object of type 'InteractiveMarkerFeedback"
  "visualization_msgs/InteractiveMarkerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractiveMarkerFeedback>)))
  "Returns md5sum for a message object of type '<InteractiveMarkerFeedback>"
  "ab0f1eee058667e28c19ff3ffc3f4b78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractiveMarkerFeedback)))
  "Returns md5sum for a message object of type 'InteractiveMarkerFeedback"
  "ab0f1eee058667e28c19ff3ffc3f4b78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractiveMarkerFeedback>)))
  "Returns full string definition for message of type '<InteractiveMarkerFeedback>"
  (cl:format cl:nil "# Time/frame info.~%Header header~%~%# Identifying string. Must be unique in the topic namespace.~%string client_id~%~%# Feedback message sent back from the GUI, e.g.~%# when the status of an interactive marker was modified by the user.~%~%# Specifies which interactive marker and control this message refers to~%string marker_name~%string control_name~%~%# Type of the event~%# KEEP_ALIVE: sent while dragging to keep up control of the marker~%# MENU_SELECT: a menu entry has been selected~%# BUTTON_CLICK: a button control has been clicked~%# POSE_UPDATE: the pose has been changed using one of the controls~%uint8 KEEP_ALIVE = 0~%uint8 POSE_UPDATE = 1~%uint8 MENU_SELECT = 2~%uint8 BUTTON_CLICK = 3~%~%uint8 MOUSE_DOWN = 4~%uint8 MOUSE_UP = 5~%~%uint8 event_type~%~%# Current pose of the marker~%# Note: Has to be valid for all feedback types.~%geometry_msgs/Pose pose~%~%# Contains the ID of the selected menu entry~%# Only valid for MENU_SELECT events.~%uint32 menu_entry_id~%~%# If event_type is BUTTON_CLICK, MOUSE_DOWN, or MOUSE_UP, mouse_point~%# may contain the 3 dimensional position of the event on the~%# control.  If it does, mouse_point_valid will be true.  mouse_point~%# will be relative to the frame listed in the header.~%geometry_msgs/Point mouse_point~%bool mouse_point_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractiveMarkerFeedback)))
  "Returns full string definition for message of type 'InteractiveMarkerFeedback"
  (cl:format cl:nil "# Time/frame info.~%Header header~%~%# Identifying string. Must be unique in the topic namespace.~%string client_id~%~%# Feedback message sent back from the GUI, e.g.~%# when the status of an interactive marker was modified by the user.~%~%# Specifies which interactive marker and control this message refers to~%string marker_name~%string control_name~%~%# Type of the event~%# KEEP_ALIVE: sent while dragging to keep up control of the marker~%# MENU_SELECT: a menu entry has been selected~%# BUTTON_CLICK: a button control has been clicked~%# POSE_UPDATE: the pose has been changed using one of the controls~%uint8 KEEP_ALIVE = 0~%uint8 POSE_UPDATE = 1~%uint8 MENU_SELECT = 2~%uint8 BUTTON_CLICK = 3~%~%uint8 MOUSE_DOWN = 4~%uint8 MOUSE_UP = 5~%~%uint8 event_type~%~%# Current pose of the marker~%# Note: Has to be valid for all feedback types.~%geometry_msgs/Pose pose~%~%# Contains the ID of the selected menu entry~%# Only valid for MENU_SELECT events.~%uint32 menu_entry_id~%~%# If event_type is BUTTON_CLICK, MOUSE_DOWN, or MOUSE_UP, mouse_point~%# may contain the 3 dimensional position of the event on the~%# control.  If it does, mouse_point_valid will be true.  mouse_point~%# will be relative to the frame listed in the header.~%geometry_msgs/Point mouse_point~%bool mouse_point_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractiveMarkerFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'client_id))
     4 (cl:length (cl:slot-value msg 'marker_name))
     4 (cl:length (cl:slot-value msg 'control_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouse_point))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractiveMarkerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractiveMarkerFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':client_id (client_id msg))
    (cl:cons ':marker_name (marker_name msg))
    (cl:cons ':control_name (control_name msg))
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':menu_entry_id (menu_entry_id msg))
    (cl:cons ':mouse_point (mouse_point msg))
    (cl:cons ':mouse_point_valid (mouse_point_valid msg))
))
