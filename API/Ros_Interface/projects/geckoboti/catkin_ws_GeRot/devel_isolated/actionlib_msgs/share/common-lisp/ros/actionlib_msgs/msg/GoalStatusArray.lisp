; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude GoalStatusArray.msg.html

(cl:defclass <GoalStatusArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status_list
    :reader status_list
    :initarg :status_list
    :type (cl:vector actionlib_msgs-msg:GoalStatus)
   :initform (cl:make-array 0 :element-type 'actionlib_msgs-msg:GoalStatus :initial-element (cl:make-instance 'actionlib_msgs-msg:GoalStatus))))
)

(cl:defclass GoalStatusArray (<GoalStatusArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalStatusArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalStatusArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<GoalStatusArray> is deprecated: use actionlib_msgs-msg:GoalStatusArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GoalStatusArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:header-val is deprecated.  Use actionlib_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status_list-val :lambda-list '(m))
(cl:defmethod status_list-val ((m <GoalStatusArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:status_list-val is deprecated.  Use actionlib_msgs-msg:status_list instead.")
  (status_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalStatusArray>) ostream)
  "Serializes a message object of type '<GoalStatusArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalStatusArray>) istream)
  "Deserializes a message object of type '<GoalStatusArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalStatusArray>)))
  "Returns string type for a message object of type '<GoalStatusArray>"
  "actionlib_msgs/GoalStatusArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalStatusArray)))
  "Returns string type for a message object of type 'GoalStatusArray"
  "actionlib_msgs/GoalStatusArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalStatusArray>)))
  "Returns md5sum for a message object of type '<GoalStatusArray>"
  "8b2b82f13216d0a8ea88bd3af735e619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalStatusArray)))
  "Returns md5sum for a message object of type 'GoalStatusArray"
  "8b2b82f13216d0a8ea88bd3af735e619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalStatusArray>)))
  "Returns full string definition for message of type '<GoalStatusArray>"
  (cl:format cl:nil "# Stores the statuses for goals that are currently being tracked~%# by an action server~%Header header~%GoalStatus[] status_list~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalStatusArray)))
  "Returns full string definition for message of type 'GoalStatusArray"
  (cl:format cl:nil "# Stores the statuses for goals that are currently being tracked~%# by an action server~%Header header~%GoalStatus[] status_list~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalStatusArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalStatusArray>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalStatusArray
    (cl:cons ':header (header msg))
    (cl:cons ':status_list (status_list msg))
))
