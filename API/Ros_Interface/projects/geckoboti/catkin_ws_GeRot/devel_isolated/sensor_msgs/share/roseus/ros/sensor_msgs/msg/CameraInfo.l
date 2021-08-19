;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::CameraInfo)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'CameraInfo (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::CAMERAINFO")
  (make-package "SENSOR_MSGS::CAMERAINFO"))

(in-package "ROS")
;;//! \htmlinclude CameraInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_msgs::CameraInfo
  :super ros::object
  :slots (_header _height _width _distortion_model _D _K _R _P _binning_x _binning_y _roi ))

(defmethod sensor_msgs::CameraInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:height __height) 0)
    ((:width __width) 0)
    ((:distortion_model __distortion_model) "")
    ((:D __D) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:K __K) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:R __R) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:P __P) (make-array 12 :initial-element 0.0 :element-type :float))
    ((:binning_x __binning_x) 0)
    ((:binning_y __binning_y) 0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _distortion_model (string __distortion_model))
   (setq _D __D)
   (setq _K __K)
   (setq _R __R)
   (setq _P __P)
   (setq _binning_x (round __binning_x))
   (setq _binning_y (round __binning_y))
   (setq _roi __roi)
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
  (:distortion_model
   (&optional __distortion_model)
   (if __distortion_model (setq _distortion_model __distortion_model)) _distortion_model)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:K
   (&optional __K)
   (if __K (setq _K __K)) _K)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:binning_x
   (&optional __binning_x)
   (if __binning_x (setq _binning_x __binning_x)) _binning_x)
  (:binning_y
   (&optional __binning_y)
   (if __binning_y (setq _binning_y __binning_y)) _binning_y)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ;; string _distortion_model
    4 (length _distortion_model)
    ;; float64[] _D
    (* 8    (length _D)) 4
    ;; float64[9] _K
    (* 8    9)
    ;; float64[9] _R
    (* 8    9)
    ;; float64[12] _P
    (* 8    12)
    ;; uint32 _binning_x
    4
    ;; uint32 _binning_y
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
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
     ;; string _distortion_model
       (write-long (length _distortion_model) s) (princ _distortion_model s)
     ;; float64[] _D
     (write-long (length _D) s)
     (dotimes (i (length _D))
       (sys::poke (elt _D i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _K
     (dotimes (i 9)
       (sys::poke (elt _K i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _R
     (dotimes (i 9)
       (sys::poke (elt _R i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[12] _P
     (dotimes (i 12)
       (sys::poke (elt _P i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _binning_x
       (write-long _binning_x s)
     ;; uint32 _binning_y
       (write-long _binning_y s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
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
   ;; string _distortion_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _distortion_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[9] _K
   (dotimes (i (length _K))
     (setf (elt _K i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _R
   (dotimes (i (length _R))
     (setf (elt _R i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[12] _P
   (dotimes (i (length _P))
     (setf (elt _P i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint32 _binning_x
     (setq _binning_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _binning_y
     (setq _binning_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get sensor_msgs::CameraInfo :md5sum-) "c9a58c1b0b154e0e6da7578cb991d214")
(setf (get sensor_msgs::CameraInfo :datatype-) "sensor_msgs/CameraInfo")
(setf (get sensor_msgs::CameraInfo :definition-)
      "# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

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



(provide :sensor_msgs/CameraInfo "c9a58c1b0b154e0e6da7578cb991d214")


