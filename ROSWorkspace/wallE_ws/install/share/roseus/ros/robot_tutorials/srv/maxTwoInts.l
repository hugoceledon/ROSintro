;; Auto-generated. Do not edit!


(when (boundp 'robot_tutorials::maxTwoInts)
  (if (not (find-package "ROBOT_TUTORIALS"))
    (make-package "ROBOT_TUTORIALS"))
  (shadow 'maxTwoInts (find-package "ROBOT_TUTORIALS")))
(unless (find-package "ROBOT_TUTORIALS::MAXTWOINTS")
  (make-package "ROBOT_TUTORIALS::MAXTWOINTS"))
(unless (find-package "ROBOT_TUTORIALS::MAXTWOINTSREQUEST")
  (make-package "ROBOT_TUTORIALS::MAXTWOINTSREQUEST"))
(unless (find-package "ROBOT_TUTORIALS::MAXTWOINTSRESPONSE")
  (make-package "ROBOT_TUTORIALS::MAXTWOINTSRESPONSE"))

(in-package "ROS")





(defclass robot_tutorials::maxTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod robot_tutorials::maxTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass robot_tutorials::maxTwoIntsResponse
  :super ros::object
  :slots (_max ))

(defmethod robot_tutorials::maxTwoIntsResponse
  (:init
   (&key
    ((:max __max) 0)
    )
   (send-super :init)
   (setq _max (round __max))
   self)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; int64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _max
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _max (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _max) (= (length (_max . bv)) 2)) ;; bignum
              (write-long (ash (elt (_max . bv) 0) 0) s)
              (write-long (ash (elt (_max . bv) 1) -1) s))
             ((and (class _max) (= (length (_max . bv)) 1)) ;; big1
              (write-long (elt (_max . bv) 0) s)
              (write-long (if (>= _max 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _max s)(write-long (if (>= _max 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _max
#+(or :alpha :irix6 :x86_64)
      (setf _max (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _max (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass robot_tutorials::maxTwoInts
  :super ros::object
  :slots ())

(setf (get robot_tutorials::maxTwoInts :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get robot_tutorials::maxTwoInts :datatype-) "robot_tutorials/maxTwoInts")
(setf (get robot_tutorials::maxTwoInts :request) robot_tutorials::maxTwoIntsRequest)
(setf (get robot_tutorials::maxTwoInts :response) robot_tutorials::maxTwoIntsResponse)

(defmethod robot_tutorials::maxTwoIntsRequest
  (:response () (instance robot_tutorials::maxTwoIntsResponse :init)))

(setf (get robot_tutorials::maxTwoIntsRequest :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get robot_tutorials::maxTwoIntsRequest :datatype-) "robot_tutorials/maxTwoIntsRequest")
(setf (get robot_tutorials::maxTwoIntsRequest :definition-)
      "int64 a
int64 b
---
int64 max
")

(setf (get robot_tutorials::maxTwoIntsResponse :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get robot_tutorials::maxTwoIntsResponse :datatype-) "robot_tutorials/maxTwoIntsResponse")
(setf (get robot_tutorials::maxTwoIntsResponse :definition-)
      "int64 a
int64 b
---
int64 max
")



(provide :robot_tutorials/maxTwoInts "0ed8b4b501f348884acc82d51e666664")


