;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::MenuEntry)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'MenuEntry (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::MENUENTRY")
  (make-package "VISUALIZATION_MSGS::MENUENTRY"))

(in-package "ROS")
;;//! \htmlinclude MenuEntry.msg.html


(intern "*FEEDBACK*" (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(shadow '*FEEDBACK* (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(defconstant visualization_msgs::MenuEntry::*FEEDBACK* 0)
(intern "*ROSRUN*" (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(shadow '*ROSRUN* (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(defconstant visualization_msgs::MenuEntry::*ROSRUN* 1)
(intern "*ROSLAUNCH*" (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(shadow '*ROSLAUNCH* (find-package "VISUALIZATION_MSGS::MENUENTRY"))
(defconstant visualization_msgs::MenuEntry::*ROSLAUNCH* 2)
(defclass visualization_msgs::MenuEntry
  :super ros::object
  :slots (_id _parent_id _title _command _command_type ))

(defmethod visualization_msgs::MenuEntry
  (:init
   (&key
    ((:id __id) 0)
    ((:parent_id __parent_id) 0)
    ((:title __title) "")
    ((:command __command) "")
    ((:command_type __command_type) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parent_id (round __parent_id))
   (setq _title (string __title))
   (setq _command (string __command))
   (setq _command_type (round __command_type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _parent_id
    4
    ;; string _title
    4 (length _title)
    ;; string _command
    4 (length _command)
    ;; uint8 _command_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _parent_id
       (write-long _parent_id s)
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; uint8 _command_type
       (write-byte _command_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _parent_id
     (setq _parent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command_type
     (setq _command_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get visualization_msgs::MenuEntry :md5sum-) "b90ec63024573de83b57aa93eb39be2d")
(setf (get visualization_msgs::MenuEntry :datatype-) "visualization_msgs/MenuEntry")
(setf (get visualization_msgs::MenuEntry :definition-)
      "# MenuEntry message.

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

")



(provide :visualization_msgs/MenuEntry "b90ec63024573de83b57aa93eb39be2d")


