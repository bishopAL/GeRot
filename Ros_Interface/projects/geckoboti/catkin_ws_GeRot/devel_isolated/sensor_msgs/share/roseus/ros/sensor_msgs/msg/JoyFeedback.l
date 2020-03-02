;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::JoyFeedback)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'JoyFeedback (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::JOYFEEDBACK")
  (make-package "SENSOR_MSGS::JOYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude JoyFeedback.msg.html


(intern "*TYPE_LED*" (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(shadow '*TYPE_LED* (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(defconstant sensor_msgs::JoyFeedback::*TYPE_LED* 0)
(intern "*TYPE_RUMBLE*" (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(shadow '*TYPE_RUMBLE* (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(defconstant sensor_msgs::JoyFeedback::*TYPE_RUMBLE* 1)
(intern "*TYPE_BUZZER*" (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(shadow '*TYPE_BUZZER* (find-package "SENSOR_MSGS::JOYFEEDBACK"))
(defconstant sensor_msgs::JoyFeedback::*TYPE_BUZZER* 2)
(defclass sensor_msgs::JoyFeedback
  :super ros::object
  :slots (_type _id _intensity ))

(defmethod sensor_msgs::JoyFeedback
  (:init
   (&key
    ((:type __type) 0)
    ((:id __id) 0)
    ((:intensity __intensity) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _id (round __id))
   (setq _intensity (float __intensity))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _id
    1
    ;; float32 _intensity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _intensity
     (setq _intensity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_msgs::JoyFeedback :md5sum-) "f4dcd73460360d98f36e55ee7f2e46f1")
(setf (get sensor_msgs::JoyFeedback :datatype-) "sensor_msgs/JoyFeedback")
(setf (get sensor_msgs::JoyFeedback :definition-)
      "# Declare of the type of feedback
uint8 TYPE_LED    = 0
uint8 TYPE_RUMBLE = 1
uint8 TYPE_BUZZER = 2

uint8 type

# This will hold an id number for each type of each feedback.
# Example, the first led would be id=0, the second would be id=1
uint8 id

# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is
# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.
float32 intensity


")



(provide :sensor_msgs/JoyFeedback "f4dcd73460360d98f36e55ee7f2e46f1")


