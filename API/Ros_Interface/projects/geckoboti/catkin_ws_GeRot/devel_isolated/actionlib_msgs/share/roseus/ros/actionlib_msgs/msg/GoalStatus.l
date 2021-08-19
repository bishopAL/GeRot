;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalStatus)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalStatus (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALSTATUS")
  (make-package "ACTIONLIB_MSGS::GOALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GoalStatus.msg.html


(intern "*PENDING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PENDING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PENDING* 0)
(intern "*ACTIVE*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*ACTIVE* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*ACTIVE* 1)
(intern "*PREEMPTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PREEMPTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PREEMPTED* 2)
(intern "*SUCCEEDED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*SUCCEEDED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*SUCCEEDED* 3)
(intern "*ABORTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*ABORTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*ABORTED* 4)
(intern "*REJECTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*REJECTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*REJECTED* 5)
(intern "*PREEMPTING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PREEMPTING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PREEMPTING* 6)
(intern "*RECALLING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*RECALLING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*RECALLING* 7)
(intern "*RECALLED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*RECALLED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*RECALLED* 8)
(intern "*LOST*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*LOST* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*LOST* 9)
(defclass actionlib_msgs::GoalStatus
  :super ros::object
  :slots (_goal_id _status _text ))

(defmethod actionlib_msgs::GoalStatus
  (:init
   (&key
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:status __status) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _goal_id __goal_id)
   (setq _status (round __status))
   (setq _text (string __text))
   self)
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; uint8 _status
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalStatus :md5sum-) "d388f9b87b3c471f784434d671988d4a")
(setf (get actionlib_msgs::GoalStatus :datatype-) "actionlib_msgs/GoalStatus")
(setf (get actionlib_msgs::GoalStatus :definition-)
      "GoalID goal_id
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



(provide :actionlib_msgs/GoalStatus "d388f9b87b3c471f784434d671988d4a")


