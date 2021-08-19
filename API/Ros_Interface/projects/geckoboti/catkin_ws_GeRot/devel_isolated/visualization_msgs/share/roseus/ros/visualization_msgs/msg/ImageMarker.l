;; Auto-generated. Do not edit!


(when (boundp 'visualization_msgs::ImageMarker)
  (if (not (find-package "VISUALIZATION_MSGS"))
    (make-package "VISUALIZATION_MSGS"))
  (shadow 'ImageMarker (find-package "VISUALIZATION_MSGS")))
(unless (find-package "VISUALIZATION_MSGS::IMAGEMARKER")
  (make-package "VISUALIZATION_MSGS::IMAGEMARKER"))

(in-package "ROS")
;;//! \htmlinclude ImageMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CIRCLE*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*CIRCLE* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*CIRCLE* 0)
(intern "*LINE_STRIP*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*LINE_STRIP* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*LINE_STRIP* 1)
(intern "*LINE_LIST*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*LINE_LIST* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*LINE_LIST* 2)
(intern "*POLYGON*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*POLYGON* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*POLYGON* 3)
(intern "*POINTS*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*POINTS* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*POINTS* 4)
(intern "*ADD*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*ADD* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*ADD* 0)
(intern "*REMOVE*" (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(shadow '*REMOVE* (find-package "VISUALIZATION_MSGS::IMAGEMARKER"))
(defconstant visualization_msgs::ImageMarker::*REMOVE* 1)
(defclass visualization_msgs::ImageMarker
  :super ros::object
  :slots (_header _ns _id _type _action _position _scale _outline_color _filled _fill_color _lifetime _points _outline_colors ))

(defmethod visualization_msgs::ImageMarker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ns __ns) "")
    ((:id __id) 0)
    ((:type __type) 0)
    ((:action __action) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:scale __scale) 0.0)
    ((:outline_color __outline_color) (instance std_msgs::ColorRGBA :init))
    ((:filled __filled) 0)
    ((:fill_color __fill_color) (instance std_msgs::ColorRGBA :init))
    ((:lifetime __lifetime) (instance ros::time :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:outline_colors __outline_colors) (let (r) (dotimes (i 0) (push (instance std_msgs::ColorRGBA :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ns (string __ns))
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _action (round __action))
   (setq _position __position)
   (setq _scale (float __scale))
   (setq _outline_color __outline_color)
   (setq _filled (round __filled))
   (setq _fill_color __fill_color)
   (setq _lifetime __lifetime)
   (setq _points __points)
   (setq _outline_colors __outline_colors)
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
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:outline_color
   (&rest __outline_color)
   (if (keywordp (car __outline_color))
       (send* _outline_color __outline_color)
     (progn
       (if __outline_color (setq _outline_color (car __outline_color)))
       _outline_color)))
  (:filled
   (&optional __filled)
   (if __filled (setq _filled __filled)) _filled)
  (:fill_color
   (&rest __fill_color)
   (if (keywordp (car __fill_color))
       (send* _fill_color __fill_color)
     (progn
       (if __fill_color (setq _fill_color (car __fill_color)))
       _fill_color)))
  (:lifetime
   (&optional __lifetime)
   (if __lifetime (setq _lifetime __lifetime)) _lifetime)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:outline_colors
   (&rest __outline_colors)
   (if (keywordp (car __outline_colors))
       (send* _outline_colors __outline_colors)
     (progn
       (if __outline_colors (setq _outline_colors (car __outline_colors)))
       _outline_colors)))
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
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _scale
    4
    ;; std_msgs/ColorRGBA _outline_color
    (send _outline_color :serialization-length)
    ;; uint8 _filled
    1
    ;; std_msgs/ColorRGBA _fill_color
    (send _fill_color :serialization-length)
    ;; duration _lifetime
    8
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/ColorRGBA[] _outline_colors
    (apply #'+ (send-all _outline_colors :serialization-length)) 4
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
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; std_msgs/ColorRGBA _outline_color
       (send _outline_color :serialize s)
     ;; uint8 _filled
       (write-byte _filled s)
     ;; std_msgs/ColorRGBA _fill_color
       (send _fill_color :serialize s)
     ;; duration _lifetime
       (write-long (send _lifetime :sec) s) (write-long (send _lifetime :nsec) s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; std_msgs/ColorRGBA[] _outline_colors
     (write-long (length _outline_colors) s)
     (dolist (elem _outline_colors)
       (send elem :serialize s)
       )
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
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; std_msgs/ColorRGBA _outline_color
     (send _outline_color :deserialize buf ptr-) (incf ptr- (send _outline_color :serialization-length))
   ;; uint8 _filled
     (setq _filled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/ColorRGBA _fill_color
     (send _fill_color :deserialize buf ptr-) (incf ptr- (send _fill_color :serialization-length))
   ;; duration _lifetime
     (send _lifetime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _lifetime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/ColorRGBA[] _outline_colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outline_colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _outline_colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visualization_msgs::ImageMarker :md5sum-) "1de93c67ec8858b831025a08fbf1b35c")
(setf (get visualization_msgs::ImageMarker :datatype-) "visualization_msgs/ImageMarker")
(setf (get visualization_msgs::ImageMarker :definition-)
      "uint8 CIRCLE=0
uint8 LINE_STRIP=1
uint8 LINE_LIST=2
uint8 POLYGON=3
uint8 POINTS=4

uint8 ADD=0
uint8 REMOVE=1

Header header
string ns		# namespace, used with id to form a unique id
int32 id          	# unique id within the namespace
int32 type        	# CIRCLE/LINE_STRIP/etc.
int32 action      	# ADD/REMOVE
geometry_msgs/Point position # 2D, in pixel-coords
float32 scale	 	# the diameter for a circle, etc.
std_msgs/ColorRGBA outline_color
uint8 filled		# whether to fill in the shape with color
std_msgs/ColorRGBA fill_color # color [0.0-1.0]
duration lifetime       # How long the object should last before being automatically deleted.  0 means forever


geometry_msgs/Point[] points # used for LINE_STRIP/LINE_LIST/POINTS/etc., 2D in pixel coords
std_msgs/ColorRGBA[] outline_colors # a color for each line, point, etc.
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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



(provide :visualization_msgs/ImageMarker "1de93c67ec8858b831025a08fbf1b35c")


