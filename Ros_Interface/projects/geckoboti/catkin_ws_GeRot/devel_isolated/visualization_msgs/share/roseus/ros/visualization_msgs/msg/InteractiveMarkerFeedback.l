;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::InteractiveMarkerFeedback)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'InteractiveMarkerFeedback (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK")
  (make-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude InteractiveMarkerFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KEEP_ALIVE*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*KEEP_ALIVE* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*KEEP_ALIVE* 0)
(intern "*POSE_UPDATE*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*POSE_UPDATE* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*POSE_UPDATE* 1)
(intern "*MENU_SELECT*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*MENU_SELECT* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*MENU_SELECT* 2)
(intern "*BUTTON_CLICK*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*BUTTON_CLICK* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*BUTTON_CLICK* 3)
(intern "*MOUSE_DOWN*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*MOUSE_DOWN* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*MOUSE_DOWN* 4)
(intern "*MOUSE_UP*" (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(shadow '*MOUSE_UP* (find-package "VISUALIZATION_MSGS::INTERACTIVEMARKERFEEDBACK"))
(defconstant visualization_msgs::InteractiveMarkerFeedback::*MOUSE_UP* 5)
(defclass visualization_msgs::InteractiveMarkerFeedback
  :super ros::object
  :slots (_header _client_id _marker_name _control_name _event_type _pose _menu_entry_id _mouse_point _mouse_point_valid ))

(defmethod visualization_msgs::InteractiveMarkerFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:client_id __client_id) "")
    ((:marker_name __marker_name) "")
    ((:control_name __control_name) "")
    ((:event_type __event_type) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:menu_entry_id __menu_entry_id) 0)
    ((:mouse_point __mouse_point) (instance geometry_msgs::Point :init))
    ((:mouse_point_valid __mouse_point_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _client_id (string __client_id))
   (setq _marker_name (string __marker_name))
   (setq _control_name (string __control_name))
   (setq _event_type (round __event_type))
   (setq _pose __pose)
   (setq _menu_entry_id (round __menu_entry_id))
   (setq _mouse_point __mouse_point)
   (setq _mouse_point_valid __mouse_point_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:client_id
   (&optional __client_id)
   (if __client_id (setq _client_id __client_id)) _client_id)
  (:marker_name
   (&optional __marker_name)
   (if __marker_name (setq _marker_name __marker_name)) _marker_name)
  (:control_name
   (&optional __control_name)
   (if __control_name (setq _control_name __control_name)) _control_name)
  (:event_type
   (&optional __event_type)
   (if __event_type (setq _event_type __event_type)) _event_type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:menu_entry_id
   (&optional __menu_entry_id)
   (if __menu_entry_id (setq _menu_entry_id __menu_entry_id)) _menu_entry_id)
  (:mouse_point
   (&rest __mouse_point)
   (if (keywordp (car __mouse_point))
       (send* _mouse_point __mouse_point)
     (progn
       (if __mouse_point (setq _mouse_point (car __mouse_point)))
       _mouse_point)))
  (:mouse_point_valid
   (&optional __mouse_point_valid)
   (if __mouse_point_valid (setq _mouse_point_valid __mouse_point_valid)) _mouse_point_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _client_id
    4 (length _client_id)
    ;; string _marker_name
    4 (length _marker_name)
    ;; string _control_name
    4 (length _control_name)
    ;; uint8 _event_type
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint32 _menu_entry_id
    4
    ;; geometry_msgs/Point _mouse_point
    (send _mouse_point :serialization-length)
    ;; bool _mouse_point_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _client_id
       (write-long (length _client_id) s) (princ _client_id s)
     ;; string _marker_name
       (write-long (length _marker_name) s) (princ _marker_name s)
     ;; string _control_name
       (write-long (length _control_name) s) (princ _control_name s)
     ;; uint8 _event_type
       (write-byte _event_type s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint32 _menu_entry_id
       (write-long _menu_entry_id s)
     ;; geometry_msgs/Point _mouse_point
       (send _mouse_point :serialize s)
     ;; bool _mouse_point_valid
       (if _mouse_point_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _client_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _client_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _event_type
     (setq _event_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint32 _menu_entry_id
     (setq _menu_entry_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _mouse_point
     (send _mouse_point :deserialize buf ptr-) (incf ptr- (send _mouse_point :serialization-length))
   ;; bool _mouse_point_valid
     (setq _mouse_point_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get visualization_msgs::InteractiveMarkerFeedback :md5sum-) "ab0f1eee058667e28c19ff3ffc3f4b78")
(setf (get visualization_msgs::InteractiveMarkerFeedback :datatype-) "visualization_msgs/InteractiveMarkerFeedback")
(setf (get visualization_msgs::InteractiveMarkerFeedback :definition-)
      "# Time/frame info.
Header header

# Identifying string. Must be unique in the topic namespace.
string client_id

# Feedback message sent back from the GUI, e.g.
# when the status of an interactive marker was modified by the user.

# Specifies which interactive marker and control this message refers to
string marker_name
string control_name

# Type of the event
# KEEP_ALIVE: sent while dragging to keep up control of the marker
# MENU_SELECT: a menu entry has been selected
# BUTTON_CLICK: a button control has been clicked
# POSE_UPDATE: the pose has been changed using one of the controls
uint8 KEEP_ALIVE = 0
uint8 POSE_UPDATE = 1
uint8 MENU_SELECT = 2
uint8 BUTTON_CLICK = 3

uint8 MOUSE_DOWN = 4
uint8 MOUSE_UP = 5

uint8 event_type

# Current pose of the marker
# Note: Has to be valid for all feedback types.
geometry_msgs/Pose pose

# Contains the ID of the selected menu entry
# Only valid for MENU_SELECT events.
uint32 menu_entry_id

# If event_type is BUTTON_CLICK, MOUSE_DOWN, or MOUSE_UP, mouse_point
# may contain the 3 dimensional position of the event on the
# control.  If it does, mouse_point_valid will be true.  mouse_point
# will be relative to the frame listed in the header.
geometry_msgs/Point mouse_point
bool mouse_point_valid

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

")



(provide :visualization_msgs/InteractiveMarkerFeedback "ab0f1eee058667e28c19ff3ffc3f4b78")


