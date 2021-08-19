; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude JoyFeedbackArray.msg.html

(cl:defclass <JoyFeedbackArray> (roslisp-msg-protocol:ros-message)
  ((array
    :reader array
    :initarg :array
    :type (cl:vector sensor_msgs-msg:JoyFeedback)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:JoyFeedback :initial-element (cl:make-instance 'sensor_msgs-msg:JoyFeedback))))
)

(cl:defclass JoyFeedbackArray (<JoyFeedbackArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoyFeedbackArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoyFeedbackArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<JoyFeedbackArray> is deprecated: use sensor_msgs-msg:JoyFeedbackArray instead.")))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <JoyFeedbackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:array-val is deprecated.  Use sensor_msgs-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoyFeedbackArray>) ostream)
  "Serializes a message object of type '<JoyFeedbackArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoyFeedbackArray>) istream)
  "Deserializes a message object of type '<JoyFeedbackArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:JoyFeedback))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoyFeedbackArray>)))
  "Returns string type for a message object of type '<JoyFeedbackArray>"
  "sensor_msgs/JoyFeedbackArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoyFeedbackArray)))
  "Returns string type for a message object of type 'JoyFeedbackArray"
  "sensor_msgs/JoyFeedbackArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoyFeedbackArray>)))
  "Returns md5sum for a message object of type '<JoyFeedbackArray>"
  "cde5730a895b1fc4dee6f91b754b213d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoyFeedbackArray)))
  "Returns md5sum for a message object of type 'JoyFeedbackArray"
  "cde5730a895b1fc4dee6f91b754b213d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoyFeedbackArray>)))
  "Returns full string definition for message of type '<JoyFeedbackArray>"
  (cl:format cl:nil "# This message publishes values for multiple feedback at once. ~%JoyFeedback[] array~%================================================================================~%MSG: sensor_msgs/JoyFeedback~%# Declare of the type of feedback~%uint8 TYPE_LED    = 0~%uint8 TYPE_RUMBLE = 1~%uint8 TYPE_BUZZER = 2~%~%uint8 type~%~%# This will hold an id number for each type of each feedback.~%# Example, the first led would be id=0, the second would be id=1~%uint8 id~%~%# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is~%# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.~%float32 intensity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoyFeedbackArray)))
  "Returns full string definition for message of type 'JoyFeedbackArray"
  (cl:format cl:nil "# This message publishes values for multiple feedback at once. ~%JoyFeedback[] array~%================================================================================~%MSG: sensor_msgs/JoyFeedback~%# Declare of the type of feedback~%uint8 TYPE_LED    = 0~%uint8 TYPE_RUMBLE = 1~%uint8 TYPE_BUZZER = 2~%~%uint8 type~%~%# This will hold an id number for each type of each feedback.~%# Example, the first led would be id=0, the second would be id=1~%uint8 id~%~%# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is~%# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.~%float32 intensity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoyFeedbackArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoyFeedbackArray>))
  "Converts a ROS message object to a list"
  (cl:list 'JoyFeedbackArray
    (cl:cons ':array (array msg))
))
