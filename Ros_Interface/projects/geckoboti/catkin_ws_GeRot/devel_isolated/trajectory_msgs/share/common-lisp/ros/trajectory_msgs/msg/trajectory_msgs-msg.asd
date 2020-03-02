
(cl:in-package :asdf)

(defsystem "trajectory_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointTrajectory" :depends-on ("_package_JointTrajectory"))
    (:file "_package_JointTrajectory" :depends-on ("_package"))
    (:file "JointTrajectoryPoint" :depends-on ("_package_JointTrajectoryPoint"))
    (:file "_package_JointTrajectoryPoint" :depends-on ("_package"))
    (:file "MultiDOFJointTrajectory" :depends-on ("_package_MultiDOFJointTrajectory"))
    (:file "_package_MultiDOFJointTrajectory" :depends-on ("_package"))
    (:file "MultiDOFJointTrajectoryPoint" :depends-on ("_package_MultiDOFJointTrajectoryPoint"))
    (:file "_package_MultiDOFJointTrajectoryPoint" :depends-on ("_package"))
  ))