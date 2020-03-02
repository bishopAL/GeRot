; Auto-generated. Do not edit!


(cl:in-package diagnostic_msgs-msg)


;//! \htmlinclude DiagnosticArray.msg.html

(cl:defclass <DiagnosticArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type (cl:vector diagnostic_msgs-msg:DiagnosticStatus)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:DiagnosticStatus :initial-element (cl:make-instance 'diagnostic_msgs-msg:DiagnosticStatus))))
)

(cl:defclass DiagnosticArray (<DiagnosticArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiagnosticArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiagnosticArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnostic_msgs-msg:<DiagnosticArray> is deprecated: use diagnostic_msgs-msg:DiagnosticArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:header-val is deprecated.  Use diagnostic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:status-val is deprecated.  Use diagnostic_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiagnosticArray>) ostream)
  "Serializes a message object of type '<DiagnosticArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiagnosticArray>) istream)
  "Deserializes a message object of type '<DiagnosticArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnostic_msgs-msg:DiagnosticStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiagnosticArray>)))
  "Returns string type for a message object of type '<DiagnosticArray>"
  "diagnostic_msgs/DiagnosticArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiagnosticArray)))
  "Returns string type for a message object of type 'DiagnosticArray"
  "diagnostic_msgs/DiagnosticArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiagnosticArray>)))
  "Returns md5sum for a message object of type '<DiagnosticArray>"
  "60810da900de1dd6ddd437c3503511da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiagnosticArray)))
  "Returns md5sum for a message object of type 'DiagnosticArray"
  "60810da900de1dd6ddd437c3503511da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiagnosticArray>)))
  "Returns full string definition for message of type '<DiagnosticArray>"
  (cl:format cl:nil "# This message is used to send diagnostic information about the state of the robot~%Header header #for timestamp~%DiagnosticStatus[] status # an array of components being reported on~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: diagnostic_msgs/DiagnosticStatus~%# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiagnosticArray)))
  "Returns full string definition for message of type 'DiagnosticArray"
  (cl:format cl:nil "# This message is used to send diagnostic information about the state of the robot~%Header header #for timestamp~%DiagnosticStatus[] status # an array of components being reported on~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: diagnostic_msgs/DiagnosticStatus~%# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiagnosticArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiagnosticArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DiagnosticArray
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
