;; Auto-generated. Do not edit!


(when (boundp 'robot_tutorials::robot)
  (if (not (find-package "ROBOT_TUTORIALS"))
    (make-package "ROBOT_TUTORIALS"))
  (shadow 'robot (find-package "ROBOT_TUTORIALS")))
(unless (find-package "ROBOT_TUTORIALS::ROBOT")
  (make-package "ROBOT_TUTORIALS::ROBOT"))

(in-package "ROS")
;;//! \htmlinclude robot.msg.html


(defclass robot_tutorials::robot
  :super ros::object
  :slots (_robot_name _country _product_id ))

(defmethod robot_tutorials::robot
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:country __country) "")
    ((:product_id __product_id) 0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _country (string __country))
   (setq _product_id (round __product_id))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:country
   (&optional __country)
   (if __country (setq _country __country)) _country)
  (:product_id
   (&optional __product_id)
   (if __product_id (setq _product_id __product_id)) _product_id)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _country
    4 (length _country)
    ;; uint8 _product_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _country
       (write-long (length _country) s) (princ _country s)
     ;; uint8 _product_id
       (write-byte _product_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _country
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _country (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _product_id
     (setq _product_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_tutorials::robot :md5sum-) "77a2470f91f15b079bebc4e6c7b62731")
(setf (get robot_tutorials::robot :datatype-) "robot_tutorials/robot")
(setf (get robot_tutorials::robot :definition-)
      "string robot_name
string country
uint8 product_id
")



(provide :robot_tutorials/robot "77a2470f91f15b079bebc4e6c7b62731")


