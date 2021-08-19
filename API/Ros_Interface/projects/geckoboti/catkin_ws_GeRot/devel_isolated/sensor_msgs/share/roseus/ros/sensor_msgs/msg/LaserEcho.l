;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::LaserEcho)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'LaserEcho (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::LASERECHO")
  (make-package "SENSOR_MSGS::LASERECHO"))

(in-package "ROS")
;;//! \htmlinclude LaserEcho.msg.html


(defclass sensor_msgs::LaserEcho
  :super ros::object
  :slots (_echoes ))

(defmethod sensor_msgs::LaserEcho
  (:init
   (&key
    ((:echoes __echoes) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _echoes __echoes)
   self)
  (:echoes
   (&optional __echoes)
   (if __echoes (setq _echoes __echoes)) _echoes)
  (:serialization-length
   ()
   (+
    ;; float32[] _echoes
    (* 4    (length _echoes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _echoes
     (write-long (length _echoes) s)
     (dotimes (i (length _echoes))
       (sys::poke (elt _echoes i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _echoes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _echoes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _echoes i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get sensor_msgs::LaserEcho :md5sum-) "8bc5ae449b200fba4d552b4225586696")
(setf (get sensor_msgs::LaserEcho :datatype-) "sensor_msgs/LaserEcho")
(setf (get sensor_msgs::LaserEcho :definition-)
      "# This message is a submessage of MultiEchoLaserScan and is not intended
# to be used separately.

float32[] echoes  # Multiple values of ranges or intensities.
                  # Each array represents data from the same angle increment.
")



(provide :sensor_msgs/LaserEcho "8bc5ae449b200fba4d552b4225586696")


