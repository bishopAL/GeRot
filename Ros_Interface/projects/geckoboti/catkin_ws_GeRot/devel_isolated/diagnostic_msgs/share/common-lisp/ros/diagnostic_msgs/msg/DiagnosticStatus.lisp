; Auto-generated. Do not edit!


(cl:in-package diagnostic_msgs-msg)


;//! \htmlinclude DiagnosticStatus.msg.html

(cl:defclass <DiagnosticStatus> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (hardware_id
    :reader hardware_id
    :initarg :hardware_id
    :type cl:string
    :initform "")
   (values
    :reader values
    :initarg :values
    :type (cl:vector diagnostic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnostic_msgs-msg:KeyValue))))
)

(cl:defclass DiagnosticStatus (<DiagnosticStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiagnosticStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiagnosticStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnostic_msgs-msg:<DiagnosticStatus> is deprecated: use diagnostic_msgs-msg:DiagnosticStatus instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <DiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:level-val is deprecated.  Use diagnostic_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:name-val is deprecated.  Use diagnostic_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:message-val is deprecated.  Use diagnostic_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'hardware_id-val :lambda-list '(m))
(cl:defmethod hardware_id-val ((m <DiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:hardware_id-val is deprecated.  Use diagnostic_msgs-msg:hardware_id instead.")
  (hardware_id m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <DiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-msg:values-val is deprecated.  Use diagnostic_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DiagnosticStatus>)))
    "Constants for message type '<DiagnosticStatus>"
  '((:OK . 0)
    (:WARN . 1)
    (:ERROR . 2)
    (:STALE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DiagnosticStatus)))
    "Constants for message type 'DiagnosticStatus"
  '((:OK . 0)
    (:WARN . 1)
    (:ERROR . 2)
    (:STALE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiagnosticStatus>) ostream)
  "Serializes a message object of type '<DiagnosticStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiagnosticStatus>) istream)
  "Deserializes a message object of type '<DiagnosticStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnostic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiagnosticStatus>)))
  "Returns string type for a message object of type '<DiagnosticStatus>"
  "diagnostic_msgs/DiagnosticStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiagnosticStatus)))
  "Returns string type for a message object of type 'DiagnosticStatus"
  "diagnostic_msgs/DiagnosticStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiagnosticStatus>)))
  "Returns md5sum for a message object of type '<DiagnosticStatus>"
  "d0ce08bc6e5ba34c7754f563a9cabaf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiagnosticStatus)))
  "Returns md5sum for a message object of type 'DiagnosticStatus"
  "d0ce08bc6e5ba34c7754f563a9cabaf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiagnosticStatus>)))
  "Returns full string definition for message of type '<DiagnosticStatus>"
  (cl:format cl:nil "# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiagnosticStatus)))
  "Returns full string definition for message of type 'DiagnosticStatus"
  (cl:format cl:nil "# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiagnosticStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'hardware_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiagnosticStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DiagnosticStatus
    (cl:cons ':level (level msg))
    (cl:cons ':name (name msg))
    (cl:cons ':message (message msg))
    (cl:cons ':hardware_id (hardware_id msg))
    (cl:cons ':values (values msg))
))
