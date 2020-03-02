; Auto-generated. Do not edit!


(cl:in-package sensor_msgs-msg)


;//! \htmlinclude NavSatStatus.msg.html

(cl:defclass <NavSatStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (service
    :reader service
    :initarg :service
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavSatStatus (<NavSatStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSatStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSatStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_msgs-msg:<NavSatStatus> is deprecated: use sensor_msgs-msg:NavSatStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavSatStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:status-val is deprecated.  Use sensor_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <NavSatStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_msgs-msg:service-val is deprecated.  Use sensor_msgs-msg:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSatStatus>)))
    "Constants for message type '<NavSatStatus>"
  '((:STATUS_NO_FIX . -1)
    (:STATUS_FIX . 0)
    (:STATUS_SBAS_FIX . 1)
    (:STATUS_GBAS_FIX . 2)
    (:SERVICE_GPS . 1)
    (:SERVICE_GLONASS . 2)
    (:SERVICE_COMPASS . 4)
    (:SERVICE_GALILEO . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSatStatus)))
    "Constants for message type 'NavSatStatus"
  '((:STATUS_NO_FIX . -1)
    (:STATUS_FIX . 0)
    (:STATUS_SBAS_FIX . 1)
    (:STATUS_GBAS_FIX . 2)
    (:SERVICE_GPS . 1)
    (:SERVICE_GLONASS . 2)
    (:SERVICE_COMPASS . 4)
    (:SERVICE_GALILEO . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSatStatus>) ostream)
  "Serializes a message object of type '<NavSatStatus>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'service)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'service)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSatStatus>) istream)
  "Deserializes a message object of type '<NavSatStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'service)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'service)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSatStatus>)))
  "Returns string type for a message object of type '<NavSatStatus>"
  "sensor_msgs/NavSatStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSatStatus)))
  "Returns string type for a message object of type 'NavSatStatus"
  "sensor_msgs/NavSatStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSatStatus>)))
  "Returns md5sum for a message object of type '<NavSatStatus>"
  "331cdbddfa4bc96ffc3b9ad98900a54c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSatStatus)))
  "Returns md5sum for a message object of type 'NavSatStatus"
  "331cdbddfa4bc96ffc3b9ad98900a54c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSatStatus>)))
  "Returns full string definition for message of type '<NavSatStatus>"
  (cl:format cl:nil "# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSatStatus)))
  "Returns full string definition for message of type 'NavSatStatus"
  (cl:format cl:nil "# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSatStatus>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSatStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSatStatus
    (cl:cons ':status (status msg))
    (cl:cons ':service (service msg))
))
