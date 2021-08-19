;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::Image)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'Image (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::IMAGE")
  (make-package "SENSOR_MSGS::IMAGE"))

(in-package "ROS")
;;//! \htmlinclude Image.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::Image
  :super ros::object
  :slots (_header _height _width _encoding _is_bigendian _step _data ))

(defmethod sensor_msgs::Image
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:height __height) 0)
    ((:width __width) 0)
    ((:encoding __encoding) "")
    ((:is_bigendian __is_bigendian) 0)
    ((:step __step) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _encoding (string __encoding))
   (setq _is_bigendian (round __is_bigendian))
   (setq _step (round __step))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:encoding
   (&optional __encoding)
   (if __encoding (setq _encoding __encoding)) _encoding)
  (:is_bigendian
   (&optional __is_bigendian)
   (if __is_bigendian (setq _is_bigendian __is_bigendian)) _is_bigendian)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ;; string _encoding
    4 (length _encoding)
    ;; uint8 _is_bigendian
    1
    ;; uint32 _step
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _width
       (write-long _width s)
     ;; string _encoding
       (write-long (length _encoding) s) (princ _encoding s)
     ;; uint8 _is_bigendian
       (write-byte _is_bigendian s)
     ;; uint32 _step
       (write-long _step s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _encoding
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _encoding (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _is_bigendian
     (setq _is_bigendian (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _step
     (setq _step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_msgs::Image :md5sum-) "060021388200f6f0f447d0fcd9c64743")
(setf (get sensor_msgs::Image :datatype-) "sensor_msgs/Image")
(setf (get sensor_msgs::Image :definition-)
      "# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

")



(provide :sensor_msgs/Image "060021388200f6f0f447d0fcd9c64743")


