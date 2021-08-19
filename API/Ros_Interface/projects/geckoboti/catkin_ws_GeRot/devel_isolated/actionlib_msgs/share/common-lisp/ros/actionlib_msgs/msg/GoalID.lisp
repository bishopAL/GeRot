; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude GoalID.msg.html

(cl:defclass <GoalID> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass GoalID (<GoalID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<GoalID> is deprecated: use actionlib_msgs-msg:GoalID instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GoalID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:stamp-val is deprecated.  Use actionlib_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GoalID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:id-val is deprecated.  Use actionlib_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalID>) ostream)
  "Serializes a message object of type '<GoalID>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalID>) istream)
  "Deserializes a message object of type '<GoalID>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalID>)))
  "Returns string type for a message object of type '<GoalID>"
  "actionlib_msgs/GoalID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalID)))
  "Returns string type for a message object of type 'GoalID"
  "actionlib_msgs/GoalID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalID>)))
  "Returns md5sum for a message object of type '<GoalID>"
  "302881f31927c1df708a2dbab0e80ee8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalID)))
  "Returns md5sum for a message object of type 'GoalID"
  "302881f31927c1df708a2dbab0e80ee8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalID>)))
  "Returns full string definition for message of type '<GoalID>"
  (cl:format cl:nil "# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalID)))
  "Returns full string definition for message of type 'GoalID"
  (cl:format cl:nil "# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalID>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalID>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalID
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':id (id msg))
))
