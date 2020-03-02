;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalID)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalID (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALID")
  (make-package "ACTIONLIB_MSGS::GOALID"))

(in-package "ROS")
;;//! \htmlinclude GoalID.msg.html


(defclass actionlib_msgs::GoalID
  :super ros::object
  :slots (_stamp _id ))

(defmethod actionlib_msgs::GoalID
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:id __id) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _id (string __id))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalID :md5sum-) "302881f31927c1df708a2dbab0e80ee8")
(setf (get actionlib_msgs::GoalID :datatype-) "actionlib_msgs/GoalID")
(setf (get actionlib_msgs::GoalID :definition-)
      "# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


")



(provide :actionlib_msgs/GoalID "302881f31927c1df708a2dbab0e80ee8")


