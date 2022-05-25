; Auto-generated. Do not edit!


(cl:in-package robot_tutorials-srv)


;//! \htmlinclude maxTwoInts-request.msg.html

(cl:defclass <maxTwoInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass maxTwoInts-request (<maxTwoInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maxTwoInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maxTwoInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_tutorials-srv:<maxTwoInts-request> is deprecated: use robot_tutorials-srv:maxTwoInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <maxTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_tutorials-srv:a-val is deprecated.  Use robot_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <maxTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_tutorials-srv:b-val is deprecated.  Use robot_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maxTwoInts-request>) ostream)
  "Serializes a message object of type '<maxTwoInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maxTwoInts-request>) istream)
  "Deserializes a message object of type '<maxTwoInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maxTwoInts-request>)))
  "Returns string type for a service object of type '<maxTwoInts-request>"
  "robot_tutorials/maxTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maxTwoInts-request)))
  "Returns string type for a service object of type 'maxTwoInts-request"
  "robot_tutorials/maxTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maxTwoInts-request>)))
  "Returns md5sum for a message object of type '<maxTwoInts-request>"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maxTwoInts-request)))
  "Returns md5sum for a message object of type 'maxTwoInts-request"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maxTwoInts-request>)))
  "Returns full string definition for message of type '<maxTwoInts-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maxTwoInts-request)))
  "Returns full string definition for message of type 'maxTwoInts-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maxTwoInts-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maxTwoInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'maxTwoInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude maxTwoInts-response.msg.html

(cl:defclass <maxTwoInts-response> (roslisp-msg-protocol:ros-message)
  ((max
    :reader max
    :initarg :max
    :type cl:integer
    :initform 0))
)

(cl:defclass maxTwoInts-response (<maxTwoInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maxTwoInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maxTwoInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_tutorials-srv:<maxTwoInts-response> is deprecated: use robot_tutorials-srv:maxTwoInts-response instead.")))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <maxTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_tutorials-srv:max-val is deprecated.  Use robot_tutorials-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maxTwoInts-response>) ostream)
  "Serializes a message object of type '<maxTwoInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maxTwoInts-response>) istream)
  "Deserializes a message object of type '<maxTwoInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maxTwoInts-response>)))
  "Returns string type for a service object of type '<maxTwoInts-response>"
  "robot_tutorials/maxTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maxTwoInts-response)))
  "Returns string type for a service object of type 'maxTwoInts-response"
  "robot_tutorials/maxTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maxTwoInts-response>)))
  "Returns md5sum for a message object of type '<maxTwoInts-response>"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maxTwoInts-response)))
  "Returns md5sum for a message object of type 'maxTwoInts-response"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maxTwoInts-response>)))
  "Returns full string definition for message of type '<maxTwoInts-response>"
  (cl:format cl:nil "int64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maxTwoInts-response)))
  "Returns full string definition for message of type 'maxTwoInts-response"
  (cl:format cl:nil "int64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maxTwoInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maxTwoInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'maxTwoInts-response
    (cl:cons ':max (max msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'maxTwoInts)))
  'maxTwoInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'maxTwoInts)))
  'maxTwoInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maxTwoInts)))
  "Returns string type for a service object of type '<maxTwoInts>"
  "robot_tutorials/maxTwoInts")