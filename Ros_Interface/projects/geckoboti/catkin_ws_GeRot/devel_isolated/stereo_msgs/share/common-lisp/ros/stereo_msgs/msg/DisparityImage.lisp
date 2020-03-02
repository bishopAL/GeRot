; Auto-generated. Do not edit!


(cl:in-package stereo_msgs-msg)


;//! \htmlinclude DisparityImage.msg.html

(cl:defclass <DisparityImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (f
    :reader f
    :initarg :f
    :type cl:float
    :initform 0.0)
   (T
    :reader T
    :initarg :T
    :type cl:float
    :initform 0.0)
   (valid_window
    :reader valid_window
    :initarg :valid_window
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
   (min_disparity
    :reader min_disparity
    :initarg :min_disparity
    :type cl:float
    :initform 0.0)
   (max_disparity
    :reader max_disparity
    :initarg :max_disparity
    :type cl:float
    :initform 0.0)
   (delta_d
    :reader delta_d
    :initarg :delta_d
    :type cl:float
    :initform 0.0))
)

(cl:defclass DisparityImage (<DisparityImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisparityImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisparityImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stereo_msgs-msg:<DisparityImage> is deprecated: use stereo_msgs-msg:DisparityImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:header-val is deprecated.  Use stereo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:image-val is deprecated.  Use stereo_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'f-val :lambda-list '(m))
(cl:defmethod f-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:f-val is deprecated.  Use stereo_msgs-msg:f instead.")
  (f m))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:T-val is deprecated.  Use stereo_msgs-msg:T instead.")
  (T m))

(cl:ensure-generic-function 'valid_window-val :lambda-list '(m))
(cl:defmethod valid_window-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:valid_window-val is deprecated.  Use stereo_msgs-msg:valid_window instead.")
  (valid_window m))

(cl:ensure-generic-function 'min_disparity-val :lambda-list '(m))
(cl:defmethod min_disparity-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:min_disparity-val is deprecated.  Use stereo_msgs-msg:min_disparity instead.")
  (min_disparity m))

(cl:ensure-generic-function 'max_disparity-val :lambda-list '(m))
(cl:defmethod max_disparity-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:max_disparity-val is deprecated.  Use stereo_msgs-msg:max_disparity instead.")
  (max_disparity m))

(cl:ensure-generic-function 'delta_d-val :lambda-list '(m))
(cl:defmethod delta_d-val ((m <DisparityImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stereo_msgs-msg:delta_d-val is deprecated.  Use stereo_msgs-msg:delta_d instead.")
  (delta_d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisparityImage>) ostream)
  "Serializes a message object of type '<DisparityImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'f))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'T))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'valid_window) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_disparity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_disparity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'delta_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisparityImage>) istream)
  "Deserializes a message object of type '<DisparityImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'T) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'valid_window) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_disparity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_disparity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_d) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisparityImage>)))
  "Returns string type for a message object of type '<DisparityImage>"
  "stereo_msgs/DisparityImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisparityImage)))
  "Returns string type for a message object of type 'DisparityImage"
  "stereo_msgs/DisparityImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisparityImage>)))
  "Returns md5sum for a message object of type '<DisparityImage>"
  "04a177815f75271039fa21f16acad8c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisparityImage)))
  "Returns md5sum for a message object of type 'DisparityImage"
  "04a177815f75271039fa21f16acad8c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisparityImage>)))
  "Returns full string definition for message of type '<DisparityImage>"
  (cl:format cl:nil "# Separate header for compatibility with current TimeSynchronizer.~%# Likely to be removed in a later release, use image.header instead.~%Header header~%~%# Floating point disparity image. The disparities are pre-adjusted for any~%# x-offset between the principal points of the two cameras (in the case~%# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)~%sensor_msgs/Image image~%~%# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.~%float32 f # Focal length, pixels~%float32 T # Baseline, world units~%~%# Subwindow of (potentially) valid disparity values.~%sensor_msgs/RegionOfInterest valid_window~%~%# The range of disparities searched.~%# In the disparity image, any disparity less than min_disparity is invalid.~%# The disparity search range defines the horopter, or 3D volume that the~%# stereo algorithm can \"see\". Points with Z outside of:~%#     Z_min = fT / max_disparity~%#     Z_max = fT / min_disparity~%# could not be found.~%float32 min_disparity~%float32 max_disparity~%~%# Smallest allowed disparity increment. The smallest achievable depth range~%# resolution is delta_Z = (Z^2/fT)*delta_d.~%float32 delta_d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisparityImage)))
  "Returns full string definition for message of type 'DisparityImage"
  (cl:format cl:nil "# Separate header for compatibility with current TimeSynchronizer.~%# Likely to be removed in a later release, use image.header instead.~%Header header~%~%# Floating point disparity image. The disparities are pre-adjusted for any~%# x-offset between the principal points of the two cameras (in the case~%# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)~%sensor_msgs/Image image~%~%# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.~%float32 f # Focal length, pixels~%float32 T # Baseline, world units~%~%# Subwindow of (potentially) valid disparity values.~%sensor_msgs/RegionOfInterest valid_window~%~%# The range of disparities searched.~%# In the disparity image, any disparity less than min_disparity is invalid.~%# The disparity search range defines the horopter, or 3D volume that the~%# stereo algorithm can \"see\". Points with Z outside of:~%#     Z_min = fT / max_disparity~%#     Z_max = fT / min_disparity~%# could not be found.~%float32 min_disparity~%float32 max_disparity~%~%# Smallest allowed disparity increment. The smallest achievable depth range~%# resolution is delta_Z = (Z^2/fT)*delta_d.~%float32 delta_d~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisparityImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'valid_window))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisparityImage>))
  "Converts a ROS message object to a list"
  (cl:list 'DisparityImage
    (cl:cons ':header (header msg))
    (cl:cons ':image (image msg))
    (cl:cons ':f (f msg))
    (cl:cons ':T (T msg))
    (cl:cons ':valid_window (valid_window msg))
    (cl:cons ':min_disparity (min_disparity msg))
    (cl:cons ':max_disparity (max_disparity msg))
    (cl:cons ':delta_d (delta_d msg))
))
