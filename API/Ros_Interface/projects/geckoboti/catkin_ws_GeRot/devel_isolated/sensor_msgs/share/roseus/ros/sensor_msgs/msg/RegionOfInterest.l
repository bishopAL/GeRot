;; Auto-generated. Do not edit!


(when (boundp 'sensor_msgs::RegionOfInterest)
  (if (not (find-package "SENSOR_MSGS"))
    (make-package "SENSOR_MSGS"))
  (shadow 'RegionOfInterest (find-package "SENSOR_MSGS")))
(unless (find-package "SENSOR_MSGS::REGIONOFINTEREST")
  (make-package "SENSOR_MSGS::REGIONOFINTEREST"))

(in-package "ROS")
;;//! \htmlinclude RegionOfInterest.msg.html


(defclass sensor_msgs::RegionOfInterest
  :super ros::object
  :slots (_x_offset _y_offset _height _width _do_rectify ))

(defmethod sensor_msgs::RegionOfInterest
  (:init
   (&key
    ((:x_offset __x_offset) 0)
    ((:y_offset __y_offset) 0)
    ((:height __height) 0)
    ((:width __width) 0)
    ((:do_rectify __do_rectify) nil)
    )
   (send-super :init)
   (setq _x_offset (round __x_offset))
   (setq _y_offset (round __y_offset))
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _do_rectify __do_rectify)
   self)
  (:x_offset
   (&optional __x_offset)
   (if __x_offset (setq _x_offset __x_offset)) _x_offset)
  (:y_offset
   (&optional __y_offset)
   (if __y_offset (setq _y_offset __y_offset)) _y_offset)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:do_rectify
   (&optional __do_rectify)
   (if __do_rectify (setq _do_rectify __do_rectify)) _do_rectify)
  (:serialization-length
   ()
   (+
    ;; uint32 _x_offset
    4
    ;; uint32 _y_offset
    4
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ;; bool _do_rectify
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _x_offset
       (write-long _x_offset s)
     ;; uint32 _y_offset
       (write-long _y_offset s)
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _width
       (write-long _width s)
     ;; bool _do_rectify
       (if _do_rectify (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _x_offset
     (setq _x_offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y_offset
     (setq _y_offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _do_rectify
     (setq _do_rectify (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_msgs::RegionOfInterest :md5sum-) "bdb633039d588fcccb441a4d43ccfe09")
(setf (get sensor_msgs::RegionOfInterest :datatype-) "sensor_msgs/RegionOfInterest")
(setf (get sensor_msgs::RegionOfInterest :definition-)
      "# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :sensor_msgs/RegionOfInterest "bdb633039d588fcccb441a4d43ccfe09")


