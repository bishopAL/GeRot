// Auto-generated. Do not edit!

// (in-package visualization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class InteractiveMarkerFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.client_id = null;
      this.marker_name = null;
      this.control_name = null;
      this.event_type = null;
      this.pose = null;
      this.menu_entry_id = null;
      this.mouse_point = null;
      this.mouse_point_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('client_id')) {
        this.client_id = initObj.client_id
      }
      else {
        this.client_id = '';
      }
      if (initObj.hasOwnProperty('marker_name')) {
        this.marker_name = initObj.marker_name
      }
      else {
        this.marker_name = '';
      }
      if (initObj.hasOwnProperty('control_name')) {
        this.control_name = initObj.control_name
      }
      else {
        this.control_name = '';
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('menu_entry_id')) {
        this.menu_entry_id = initObj.menu_entry_id
      }
      else {
        this.menu_entry_id = 0;
      }
      if (initObj.hasOwnProperty('mouse_point')) {
        this.mouse_point = initObj.mouse_point
      }
      else {
        this.mouse_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('mouse_point_valid')) {
        this.mouse_point_valid = initObj.mouse_point_valid
      }
      else {
        this.mouse_point_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractiveMarkerFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [client_id]
    bufferOffset = _serializer.string(obj.client_id, buffer, bufferOffset);
    // Serialize message field [marker_name]
    bufferOffset = _serializer.string(obj.marker_name, buffer, bufferOffset);
    // Serialize message field [control_name]
    bufferOffset = _serializer.string(obj.control_name, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = _serializer.uint8(obj.event_type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [menu_entry_id]
    bufferOffset = _serializer.uint32(obj.menu_entry_id, buffer, bufferOffset);
    // Serialize message field [mouse_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.mouse_point, buffer, bufferOffset);
    // Serialize message field [mouse_point_valid]
    bufferOffset = _serializer.bool(obj.mouse_point_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractiveMarkerFeedback
    let len;
    let data = new InteractiveMarkerFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [client_id]
    data.client_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [marker_name]
    data.marker_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_name]
    data.control_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [menu_entry_id]
    data.menu_entry_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mouse_point]
    data.mouse_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [mouse_point_valid]
    data.mouse_point_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.client_id.length;
    length += object.marker_name.length;
    length += object.control_name.length;
    return length + 98;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization_msgs/InteractiveMarkerFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab0f1eee058667e28c19ff3ffc3f4b78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Time/frame info.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InteractiveMarkerFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.client_id !== undefined) {
      resolved.client_id = msg.client_id;
    }
    else {
      resolved.client_id = ''
    }

    if (msg.marker_name !== undefined) {
      resolved.marker_name = msg.marker_name;
    }
    else {
      resolved.marker_name = ''
    }

    if (msg.control_name !== undefined) {
      resolved.control_name = msg.control_name;
    }
    else {
      resolved.control_name = ''
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = msg.event_type;
    }
    else {
      resolved.event_type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.menu_entry_id !== undefined) {
      resolved.menu_entry_id = msg.menu_entry_id;
    }
    else {
      resolved.menu_entry_id = 0
    }

    if (msg.mouse_point !== undefined) {
      resolved.mouse_point = geometry_msgs.msg.Point.Resolve(msg.mouse_point)
    }
    else {
      resolved.mouse_point = new geometry_msgs.msg.Point()
    }

    if (msg.mouse_point_valid !== undefined) {
      resolved.mouse_point_valid = msg.mouse_point_valid;
    }
    else {
      resolved.mouse_point_valid = false
    }

    return resolved;
    }
};

// Constants for message
InteractiveMarkerFeedback.Constants = {
  KEEP_ALIVE: 0,
  POSE_UPDATE: 1,
  MENU_SELECT: 2,
  BUTTON_CLICK: 3,
  MOUSE_DOWN: 4,
  MOUSE_UP: 5,
}

module.exports = InteractiveMarkerFeedback;
