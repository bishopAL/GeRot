; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude LaserEcho.msg.html

(cl:defclass <LaserEcho> (roslisp-msg-protocol:ros-message)
  ((echoes
    :reader echoes
    :initarg :echoes
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass LaserEcho (<LaserEcho>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserEcho>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserEcho)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<LaserEcho> is deprecated: use sensor_msgs-msg:LaserEcho instead.")))

(cl:ensure-generic-function 'echoes-val :lambda-list '(m))
(cl:defmethod echoes-val ((m <LaserEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:echoes-val is deprecated.  Use sensor_msgs-msg:echoes instead.")
  (echoes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserEcho>) ostream)
  "Serializes a message object of type '<LaserEcho>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'echoes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'echoes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserEcho>) istream)
  "Deserializes a message object of type '<LaserEcho>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'echoes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'echoes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserEcho>)))
  "Returns string type for a message object of type '<LaserEcho>"
  "sensor_msgs/LaserEcho")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserEcho)))
  "Returns string type for a message object of type 'LaserEcho"
  "sensor_msgs/LaserEcho")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserEcho>)))
  "Returns md5sum for a message object of type '<LaserEcho>"
  "8bc5ae449b200fba4d552b4225586696")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserEcho)))
  "Returns md5sum for a message object of type 'LaserEcho"
  "8bc5ae449b200fba4d552b4225586696")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserEcho>)))
  "Returns full string definition for message of type '<LaserEcho>"
  (cl:format cl:nil "# This message is a submessage of MultiEchoLaserScan and is not intended~%# to be used separately.~%~%float32[] echoes  # Multiple values of ranges or intensities.~%                  # Each array represents data from the same angle increment.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserEcho)))
  "Returns full string definition for message of type 'LaserEcho"
  (cl:format cl:nil "# This message is a submessage of MultiEchoLaserScan and is not intended~%# to be used separately.~%~%float32[] echoes  # Multiple values of ranges or intensities.~%                  # Each array represents data from the same angle increment.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserEcho>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'echoes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserEcho>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserEcho
    (cl:cons ':echoes (echoes msg))
))
