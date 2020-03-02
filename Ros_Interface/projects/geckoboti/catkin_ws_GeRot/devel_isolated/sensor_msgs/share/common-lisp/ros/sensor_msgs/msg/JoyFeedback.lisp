; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude JoyFeedback.msg.html

(cl:defclass <JoyFeedback> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (intensity
    :reader intensity
    :initarg :intensity
    :type cl:float
    :initform 0.0))
)

(cl:defclass JoyFeedback (<JoyFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoyFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoyFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<JoyFeedback> is deprecated: use sensor_msgs-msg:JoyFeedback instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <JoyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:type-val is deprecated.  Use sensor_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <JoyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:id-val is deprecated.  Use sensor_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'intensity-val :lambda-list '(m))
(cl:defmethod intensity-val ((m <JoyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:intensity-val is deprecated.  Use sensor_msgs-msg:intensity instead.")
  (intensity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JoyFeedback>)))
    "Constants for message type '<JoyFeedback>"
  '((:TYPE_LED . 0)
    (:TYPE_RUMBLE . 1)
    (:TYPE_BUZZER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JoyFeedback)))
    "Constants for message type 'JoyFeedback"
  '((:TYPE_LED . 0)
    (:TYPE_RUMBLE . 1)
    (:TYPE_BUZZER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoyFeedback>) ostream)
  "Serializes a message object of type '<JoyFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoyFeedback>) istream)
  "Deserializes a message object of type '<JoyFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intensity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoyFeedback>)))
  "Returns string type for a message object of type '<JoyFeedback>"
  "sensor_msgs/JoyFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoyFeedback)))
  "Returns string type for a message object of type 'JoyFeedback"
  "sensor_msgs/JoyFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoyFeedback>)))
  "Returns md5sum for a message object of type '<JoyFeedback>"
  "f4dcd73460360d98f36e55ee7f2e46f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoyFeedback)))
  "Returns md5sum for a message object of type 'JoyFeedback"
  "f4dcd73460360d98f36e55ee7f2e46f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoyFeedback>)))
  "Returns full string definition for message of type '<JoyFeedback>"
  (cl:format cl:nil "# Declare of the type of feedback~%uint8 TYPE_LED    = 0~%uint8 TYPE_RUMBLE = 1~%uint8 TYPE_BUZZER = 2~%~%uint8 type~%~%# This will hold an id number for each type of each feedback.~%# Example, the first led would be id=0, the second would be id=1~%uint8 id~%~%# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is~%# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.~%float32 intensity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoyFeedback)))
  "Returns full string definition for message of type 'JoyFeedback"
  (cl:format cl:nil "# Declare of the type of feedback~%uint8 TYPE_LED    = 0~%uint8 TYPE_RUMBLE = 1~%uint8 TYPE_BUZZER = 2~%~%uint8 type~%~%# This will hold an id number for each type of each feedback.~%# Example, the first led would be id=0, the second would be id=1~%uint8 id~%~%# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is~%# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.~%float32 intensity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoyFeedback>))
  (cl:+ 0
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoyFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'JoyFeedback
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':intensity (intensity msg))
))
