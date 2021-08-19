;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalStatusArray)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalStatusArray (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALSTATUSARRAY")
  (make-package "ACTIONLIB_MSGS::GOALSTATUSARRAY"))

(in-package "ROS")
;;//! \htmlinclude GoalStatusArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_msgs::GoalStatusArray
  :super ros::object
  :slots (_header _status_list ))

(defmethod actionlib_msgs::GoalStatusArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status_list __status_list) (let (r) (dotimes (i 0) (push (instance actionlib_msgs::GoalStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status_list __status_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status_list
   (&rest __status_list)
   (if (keywordp (car __status_list))
       (send* _status_list __status_list)
     (progn
       (if __status_list (setq _status_list (car __status_list)))
       _status_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalStatus[] _status_list
    (apply #'+ (send-all _status_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalStatus[] _status_list
     (write-long (length _status_list) s)
     (dolist (elem _status_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalStatus[] _status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_list (let (r) (dotimes (i n) (push (instance actionlib_msgs::GoalStatus :init) r)) r))
     (dolist (elem- _status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalStatusArray :md5sum-) "8b2b82f13216d0a8ea88bd3af735e619")
(setf (get actionlib_msgs::GoalStatusArray :datatype-) "actionlib_msgs/GoalStatusArray")
(setf (get actionlib_msgs::GoalStatusArray :definition-)
      "# Stores the statuses for goals that are currently being tracked
# by an action server
Header header
GoalStatus[] status_list


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


")



(provide :actionlib_msgs/GoalStatusArray "8b2b82f13216d0a8ea88bd3af735e619")


