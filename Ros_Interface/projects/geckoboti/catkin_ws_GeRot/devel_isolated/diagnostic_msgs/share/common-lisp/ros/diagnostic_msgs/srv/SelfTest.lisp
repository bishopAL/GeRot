; Auto-generated. Do not edit!


(cl:in-package diagnostic_msgs-srv)


;//! \htmlinclude SelfTest-request.msg.html

(cl:defclass <SelfTest-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SelfTest-request (<SelfTest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfTest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfTest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnostic_msgs-srv:<SelfTest-request> is deprecated: use diagnostic_msgs-srv:SelfTest-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfTest-request>) ostream)
  "Serializes a message object of type '<SelfTest-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfTest-request>) istream)
  "Deserializes a message object of type '<SelfTest-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfTest-request>)))
  "Returns string type for a service object of type '<SelfTest-request>"
  "diagnostic_msgs/SelfTestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfTest-request)))
  "Returns string type for a service object of type 'SelfTest-request"
  "diagnostic_msgs/SelfTestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfTest-request>)))
  "Returns md5sum for a message object of type '<SelfTest-request>"
  "ac21b1bab7ab17546986536c22eb34e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfTest-request)))
  "Returns md5sum for a message object of type 'SelfTest-request"
  "ac21b1bab7ab17546986536c22eb34e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfTest-request>)))
  "Returns full string definition for message of type '<SelfTest-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfTest-request)))
  "Returns full string definition for message of type 'SelfTest-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfTest-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfTest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfTest-request
))
;//! \htmlinclude SelfTest-response.msg.html

(cl:defclass <SelfTest-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (passed
    :reader passed
    :initarg :passed
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type (cl:vector diagnostic_msgs-msg:DiagnosticStatus)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:DiagnosticStatus :initial-element (cl:make-instance 'diagnostic_msgs-msg:DiagnosticStatus))))
)

(cl:defclass SelfTest-response (<SelfTest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfTest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfTest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnostic_msgs-srv:<SelfTest-response> is deprecated: use diagnostic_msgs-srv:SelfTest-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SelfTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-srv:id-val is deprecated.  Use diagnostic_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'passed-val :lambda-list '(m))
(cl:defmethod passed-val ((m <SelfTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-srv:passed-val is deprecated.  Use diagnostic_msgs-srv:passed instead.")
  (passed m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SelfTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnostic_msgs-srv:status-val is deprecated.  Use diagnostic_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfTest-response>) ostream)
  "Serializes a message object of type '<SelfTest-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'passed)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfTest-response>) istream)
  "Deserializes a message object of type '<SelfTest-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'passed)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfTest-response>)))
  "Returns string type for a service object of type '<SelfTest-response>"
  "diagnostic_msgs/SelfTestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfTest-response)))
  "Returns string type for a service object of type 'SelfTest-response"
  "diagnostic_msgs/SelfTestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfTest-response>)))
  "Returns md5sum for a message object of type '<SelfTest-response>"
  "ac21b1bab7ab17546986536c22eb34e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfTest-response)))
  "Returns md5sum for a message object of type 'SelfTest-response"
  "ac21b1bab7ab17546986536c22eb34e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfTest-response>)))
  "Returns full string definition for message of type '<SelfTest-response>"
  (cl:format cl:nil "string id~%byte passed~%DiagnosticStatus[] status~%~%~%================================================================================~%MSG: diagnostic_msgs/DiagnosticStatus~%# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfTest-response)))
  "Returns full string definition for message of type 'SelfTest-response"
  (cl:format cl:nil "string id~%byte passed~%DiagnosticStatus[] status~%~%~%================================================================================~%MSG: diagnostic_msgs/DiagnosticStatus~%# This message holds the status of an individual component of the robot.~%# ~%~%# Possible levels of operations~%byte OK=0~%byte WARN=1~%byte ERROR=2~%byte STALE=3~%~%byte level # level of operation enumerated above ~%string name # a description of the test/component reporting~%string message # a description of the status~%string hardware_id # a hardware unique string~%KeyValue[] values # an array of values associated with the status~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfTest-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfTest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfTest-response
    (cl:cons ':id (id msg))
    (cl:cons ':passed (passed msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelfTest)))
  'SelfTest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelfTest)))
  'SelfTest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfTest)))
  "Returns string type for a service object of type '<SelfTest>"
  "diagnostic_msgs/SelfTest")