// Auto-generated. Do not edit!

// (in-package sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radiation_type = null;
      this.field_of_view = null;
      this.min_range = null;
      this.max_range = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radiation_type')) {
        this.radiation_type = initObj.radiation_type
      }
      else {
        this.radiation_type = 0;
      }
      if (initObj.hasOwnProperty('field_of_view')) {
        this.field_of_view = initObj.field_of_view
      }
      else {
        this.field_of_view = 0.0;
      }
      if (initObj.hasOwnProperty('min_range')) {
        this.min_range = initObj.min_range
      }
      else {
        this.min_range = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Range
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radiation_type]
    bufferOffset = _serializer.uint8(obj.radiation_type, buffer, bufferOffset);
    // Serialize message field [field_of_view]
    bufferOffset = _serializer.float32(obj.field_of_view, buffer, bufferOffset);
    // Serialize message field [min_range]
    bufferOffset = _serializer.float32(obj.min_range, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float32(obj.max_range, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Range
    let len;
    let data = new Range(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radiation_type]
    data.radiation_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [field_of_view]
    data.field_of_view = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_range]
    data.min_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_msgs/Range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c005c34273dc426c67a020a87bc24148';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single range reading from an active ranger that emits energy and reports
    # one range reading that is valid along an arc at the distance measured. 
    # This message is  not appropriate for laser scanners. See the LaserScan
    # message if you are working with a laser scanner.
    
    # This message also can represent a fixed-distance (binary) ranger.  This
    # sensor will have min_range===max_range===distance of detection.
    # These sensors follow REP 117 and will output -Inf if the object is detected
    # and +Inf if the object is outside of the detection range.
    
    Header header           # timestamp in the header is the time the ranger
                            # returned the distance reading
    
    # Radiation type enums
    # If you want a value added to this list, send an email to the ros-users list
    uint8 ULTRASOUND=0
    uint8 INFRARED=1
    
    uint8 radiation_type    # the type of radiation used by the sensor
                            # (sound, IR, etc) [enum]
    
    float32 field_of_view   # the size of the arc that the distance reading is
                            # valid for [rad]
                            # the object causing the range reading may have
                            # been anywhere within -field_of_view/2 and
                            # field_of_view/2 at the measured range. 
                            # 0 angle corresponds to the x-axis of the sensor.
    
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
                            # Fixed distance rangers require min_range==max_range
    
    float32 range           # range data [m]
                            # (Note: values < range_min or > range_max
                            # should be discarded)
                            # Fixed distance rangers only output -Inf or +Inf.
                            # -Inf represents a detection within fixed distance.
                            # (Detection too close to the sensor to quantify)
                            # +Inf represents no detection within the fixed distance.
                            # (Object out of range)
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Range(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radiation_type !== undefined) {
      resolved.radiation_type = msg.radiation_type;
    }
    else {
      resolved.radiation_type = 0
    }

    if (msg.field_of_view !== undefined) {
      resolved.field_of_view = msg.field_of_view;
    }
    else {
      resolved.field_of_view = 0.0
    }

    if (msg.min_range !== undefined) {
      resolved.min_range = msg.min_range;
    }
    else {
      resolved.min_range = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    return resolved;
    }
};

// Constants for message
Range.Constants = {
  ULTRASOUND: 0,
  INFRARED: 1,
}

module.exports = Range;
