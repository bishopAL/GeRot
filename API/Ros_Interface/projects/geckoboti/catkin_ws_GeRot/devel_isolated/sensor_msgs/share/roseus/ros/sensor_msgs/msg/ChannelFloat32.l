;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::ChannelFloat32)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'ChannelFloat32 (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::CHANNELFLOAT32")
  (make-package "SENSOR_MSGS::CHANNELFLOAT32"))

(in-package "ROS")
;;//! \htmlinclude ChannelFloat32.msg.html


(defclass sensor_msgs::ChannelFloat32
  :super ros::object
  :slots (_name _values ))

(defmethod sensor_msgs::ChannelFloat32
  (:init
   (&key
    ((:name __name) "")
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _values __values)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get sensor_msgs::ChannelFloat32 :md5sum-) "3d40139cdd33dfedcb71ffeeeb42ae7f")
(setf (get sensor_msgs::ChannelFloat32 :datatype-) "sensor_msgs/ChannelFloat32")
(setf (get sensor_msgs::ChannelFloat32 :definition-)
      "# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

")



(provide :sensor_msgs/ChannelFloat32 "3d40139cdd33dfedcb71ffeeeb42ae7f")


