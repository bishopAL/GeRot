;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::NavSatStatus)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'NavSatStatus (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::NAVSATSTATUS")
  (make-package "SENSOR_MSGS::NAVSATSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavSatStatus.msg.html


(intern "*STATUS_NO_FIX*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*STATUS_NO_FIX* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*STATUS_NO_FIX* -1)
(intern "*STATUS_FIX*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*STATUS_FIX* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*STATUS_FIX* 0)
(intern "*STATUS_SBAS_FIX*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*STATUS_SBAS_FIX* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*STATUS_SBAS_FIX* 1)
(intern "*STATUS_GBAS_FIX*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*STATUS_GBAS_FIX* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*STATUS_GBAS_FIX* 2)
(intern "*SERVICE_GPS*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*SERVICE_GPS* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*SERVICE_GPS* 1)
(intern "*SERVICE_GLONASS*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*SERVICE_GLONASS* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*SERVICE_GLONASS* 2)
(intern "*SERVICE_COMPASS*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*SERVICE_COMPASS* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*SERVICE_COMPASS* 4)
(intern "*SERVICE_GALILEO*" (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(shadow '*SERVICE_GALILEO* (find-package "SENSOR_MSGS::NAVSATSTATUS"))
(defconstant sensor_msgs::NavSatStatus::*SERVICE_GALILEO* 8)
(defclass sensor_msgs::NavSatStatus
  :super ros::object
  :slots (_status _service ))

(defmethod sensor_msgs::NavSatStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:service __service) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _service (round __service))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ;; uint16 _service
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;; uint16 _service
       (write-word _service s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; uint16 _service
     (setq _service (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sensor_msgs::NavSatStatus :md5sum-) "331cdbddfa4bc96ffc3b9ad98900a54c")
(setf (get sensor_msgs::NavSatStatus :datatype-) "sensor_msgs/NavSatStatus")
(setf (get sensor_msgs::NavSatStatus :definition-)
      "# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :sensor_msgs/NavSatStatus "331cdbddfa4bc96ffc3b9ad98900a54c")


