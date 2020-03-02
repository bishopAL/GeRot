// Auto-generated. Do not edit!

// (in-package visualization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MenuEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.parent_id = null;
      this.title = null;
      this.command = null;
      this.command_type = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('parent_id')) {
        this.parent_id = initObj.parent_id
      }
      else {
        this.parent_id = 0;
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MenuEntry
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = _serializer.uint32(obj.parent_id, buffer, bufferOffset);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [command_type]
    bufferOffset = _serializer.uint8(obj.command_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MenuEntry
    let len;
    let data = new MenuEntry(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_type]
    data.command_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.title.length;
    length += object.command.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization_msgs/MenuEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b90ec63024573de83b57aa93eb39be2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MenuEntry message.
    
    # Each InteractiveMarker message has an array of MenuEntry messages.
    # A collection of MenuEntries together describe a
    # menu/submenu/subsubmenu/etc tree, though they are stored in a flat
    # array.  The tree structure is represented by giving each menu entry
    # an ID number and a "parent_id" field.  Top-level entries are the
    # ones with parent_id = 0.  Menu entries are ordered within their
    # level the same way they are ordered in the containing array.  Parent
    # entries must appear before their children.
    
    # Example:
    # - id = 3
    #   parent_id = 0
    #   title = "fun"
    # - id = 2
    #   parent_id = 0
    #   title = "robot"
    # - id = 4
    #   parent_id = 2
    #   title = "pr2"
    # - id = 5
    #   parent_id = 2
    #   title = "turtle"
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
    # ROSRUN: execute "rosrun" with arguments given in the command field (above).
    # ROSLAUNCH: execute "roslaunch" with arguments given in the command field (above).
    uint8 FEEDBACK=0
    uint8 ROSRUN=1
    uint8 ROSLAUNCH=2
    uint8 command_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MenuEntry(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.parent_id !== undefined) {
      resolved.parent_id = msg.parent_id;
    }
    else {
      resolved.parent_id = 0
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.command_type !== undefined) {
      resolved.command_type = msg.command_type;
    }
    else {
      resolved.command_type = 0
    }

    return resolved;
    }
};

// Constants for message
MenuEntry.Constants = {
  FEEDBACK: 0,
  ROSRUN: 1,
  ROSLAUNCH: 2,
}

module.exports = MenuEntry;
