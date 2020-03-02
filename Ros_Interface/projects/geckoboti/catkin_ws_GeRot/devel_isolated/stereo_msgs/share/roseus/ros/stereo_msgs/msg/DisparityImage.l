;; Auto-generated. Do not edit!


(when (boundp 'stereo_msgs::DisparityImage)
  (if (not (find-package "STEREO_MSGS"))
    (make-package "STEREO_MSGS"))
  (shadow 'DisparityImage (find-package "STEREO_MSGS")))
(unless (find-package "STEREO_MSGS::DISPARITYIMAGE")
  (make-package "STEREO_MSGS::DISPARITYIMAGE"))

(in-package "ROS")
;;//! \htmlinclude DisparityImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stereo_msgs::DisparityImage
  :super ros::object
  :slots (_header _image _f _T _valid_window _min_disparity _max_disparity _delta_d ))

(defmethod stereo_msgs::DisparityImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:f __f) 0.0)
    ((:T __T) 0.0)
    ((:valid_window __valid_window) (instance sensor_msgs::RegionOfInterest :init))
    ((:min_disparity __min_disparity) 0.0)
    ((:max_disparity __max_disparity) 0.0)
    ((:delta_d __delta_d) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _image __image)
   (setq _f (float __f))
   (setq _T (float __T))
   (setq _valid_window __valid_window)
   (setq _min_disparity (float __min_disparity))
   (setq _max_disparity (float __max_disparity))
   (setq _delta_d (float __delta_d))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:f
   (&optional __f)
   (if __f (setq _f __f)) _f)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:valid_window
   (&rest __valid_window)
   (if (keywordp (car __valid_window))
       (send* _valid_window __valid_window)
     (progn
       (if __valid_window (setq _valid_window (car __valid_window)))
       _valid_window)))
  (:min_disparity
   (&optional __min_disparity)
   (if __min_disparity (setq _min_disparity __min_disparity)) _min_disparity)
  (:max_disparity
   (&optional __max_disparity)
   (if __max_disparity (setq _max_disparity __max_disparity)) _max_disparity)
  (:delta_d
   (&optional __delta_d)
   (if __delta_d (setq _delta_d __delta_d)) _delta_d)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; float32 _f
    4
    ;; float32 _T
    4
    ;; sensor_msgs/RegionOfInterest _valid_window
    (send _valid_window :serialization-length)
    ;; float32 _min_disparity
    4
    ;; float32 _max_disparity
    4
    ;; float32 _delta_d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; float32 _f
       (sys::poke _f (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _T
       (sys::poke _T (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/RegionOfInterest _valid_window
       (send _valid_window :serialize s)
     ;; float32 _min_disparity
       (sys::poke _min_disparity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_disparity
       (sys::poke _max_disparity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delta_d
       (sys::poke _delta_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; float32 _f
     (setq _f (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _T
     (setq _T (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _valid_window
     (send _valid_window :deserialize buf ptr-) (incf ptr- (send _valid_window :serialization-length))
   ;; float32 _min_disparity
     (setq _min_disparity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_disparity
     (setq _max_disparity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delta_d
     (setq _delta_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stereo_msgs::DisparityImage :md5sum-) "04a177815f75271039fa21f16acad8c9")
(setf (get stereo_msgs::DisparityImage :datatype-) "stereo_msgs/DisparityImage")
(setf (get stereo_msgs::DisparityImage :definition-)
      "# Separate header for compatibility with current TimeSynchronizer.
# Likely to be removed in a later release, use image.header instead.
Header header

# Floating point disparity image. The disparities are pre-adjusted for any
# x-offset between the principal points of the two cameras (in the case
# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)
sensor_msgs/Image image

# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.
float32 f # Focal length, pixels
float32 T # Baseline, world units

# Subwindow of (potentially) valid disparity values.
sensor_msgs/RegionOfInterest valid_window

# The range of disparities searched.
# In the disparity image, any disparity less than min_disparity is invalid.
# The disparity search range defines the horopter, or 3D volume that the
# stereo algorithm can \"see\". Points with Z outside of:
#     Z_min = fT / max_disparity
#     Z_max = fT / min_disparity
# could not be found.
float32 min_disparity
float32 max_disparity

# Smallest allowed disparity increment. The smallest achievable depth range
# resolution is delta_Z = (Z^2/fT)*delta_d.
float32 delta_d

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
MSG: sensor_msgs/Image
# This message contains an uncompressed image
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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :stereo_msgs/DisparityImage "04a177815f75271039fa21f16acad8c9")


