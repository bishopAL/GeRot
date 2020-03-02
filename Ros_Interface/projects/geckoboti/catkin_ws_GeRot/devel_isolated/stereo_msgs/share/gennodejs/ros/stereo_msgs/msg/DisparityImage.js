// Auto-generated. Do not edit!

// (in-package stereo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DisparityImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image = null;
      this.f = null;
      this.T = null;
      this.valid_window = null;
      this.min_disparity = null;
      this.max_disparity = null;
      this.delta_d = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('f')) {
        this.f = initObj.f
      }
      else {
        this.f = 0.0;
      }
      if (initObj.hasOwnProperty('T')) {
        this.T = initObj.T
      }
      else {
        this.T = 0.0;
      }
      if (initObj.hasOwnProperty('valid_window')) {
        this.valid_window = initObj.valid_window
      }
      else {
        this.valid_window = new sensor_msgs.msg.RegionOfInterest();
      }
      if (initObj.hasOwnProperty('min_disparity')) {
        this.min_disparity = initObj.min_disparity
      }
      else {
        this.min_disparity = 0.0;
      }
      if (initObj.hasOwnProperty('max_disparity')) {
        this.max_disparity = initObj.max_disparity
      }
      else {
        this.max_disparity = 0.0;
      }
      if (initObj.hasOwnProperty('delta_d')) {
        this.delta_d = initObj.delta_d
      }
      else {
        this.delta_d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisparityImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [f]
    bufferOffset = _serializer.float32(obj.f, buffer, bufferOffset);
    // Serialize message field [T]
    bufferOffset = _serializer.float32(obj.T, buffer, bufferOffset);
    // Serialize message field [valid_window]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.valid_window, buffer, bufferOffset);
    // Serialize message field [min_disparity]
    bufferOffset = _serializer.float32(obj.min_disparity, buffer, bufferOffset);
    // Serialize message field [max_disparity]
    bufferOffset = _serializer.float32(obj.max_disparity, buffer, bufferOffset);
    // Serialize message field [delta_d]
    bufferOffset = _serializer.float32(obj.delta_d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisparityImage
    let len;
    let data = new DisparityImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [f]
    data.f = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [T]
    data.T = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid_window]
    data.valid_window = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_disparity]
    data.min_disparity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_disparity]
    data.max_disparity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delta_d]
    data.delta_d = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stereo_msgs/DisparityImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04a177815f75271039fa21f16acad8c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Separate header for compatibility with current TimeSynchronizer.
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
    # stereo algorithm can "see". Points with Z outside of:
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisparityImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.f !== undefined) {
      resolved.f = msg.f;
    }
    else {
      resolved.f = 0.0
    }

    if (msg.T !== undefined) {
      resolved.T = msg.T;
    }
    else {
      resolved.T = 0.0
    }

    if (msg.valid_window !== undefined) {
      resolved.valid_window = sensor_msgs.msg.RegionOfInterest.Resolve(msg.valid_window)
    }
    else {
      resolved.valid_window = new sensor_msgs.msg.RegionOfInterest()
    }

    if (msg.min_disparity !== undefined) {
      resolved.min_disparity = msg.min_disparity;
    }
    else {
      resolved.min_disparity = 0.0
    }

    if (msg.max_disparity !== undefined) {
      resolved.max_disparity = msg.max_disparity;
    }
    else {
      resolved.max_disparity = 0.0
    }

    if (msg.delta_d !== undefined) {
      resolved.delta_d = msg.delta_d;
    }
    else {
      resolved.delta_d = 0.0
    }

    return resolved;
    }
};

module.exports = DisparityImage;
