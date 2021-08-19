;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::JoyFeedbackArray)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'JoyFeedbackArray (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::JOYFEEDBACKARRAY")
  (make-package "SENSOR_MSGS::JOYFEEDBACKARRAY"))

(in-package "ROS")
;;//! \htmlinclude JoyFeedbackArray.msg.html


(defclass sensor_msgs::JoyFeedbackArray
  :super ros::object
  :slots (_array ))

(defmethod sensor_msgs::JoyFeedbackArray
  (:init
   (&key
    ((:array __array) (let (r) (dotimes (i 0) (push (instance sensor_msgs::JoyFeedback :init) r)) r))
    )
   (send-super :init)
   (setq _array __array)
   self)
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JoyFeedback[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JoyFeedback[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JoyFeedback[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance sensor_msgs::JoyFeedback :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_msgs::JoyFeedbackArray :md5sum-) "cde5730a895b1fc4dee6f91b754b213d")
(setf (get sensor_msgs::JoyFeedbackArray :datatype-) "sensor_msgs/JoyFeedbackArray")
(setf (get sensor_msgs::JoyFeedbackArray :definition-)
      "# This message publishes values for multiple feedback at once. 
JoyFeedback[] array
================================================================================
MSG: sensor_msgs/JoyFeedback
# Declare of the type of feedback
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



(provide :sensor_msgs/JoyFeedbackArray "cde5730a895b1fc4dee6f91b754b213d")


