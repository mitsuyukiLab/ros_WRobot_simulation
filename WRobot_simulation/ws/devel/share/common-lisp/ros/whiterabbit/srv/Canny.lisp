; Auto-generated. Do not edit!


(cl:in-package whiterabbit-srv)


;//! \htmlinclude Canny-request.msg.html

(cl:defclass <Canny-request> (roslisp-msg-protocol:ros-message)
  ((origin
    :reader origin
    :initarg :origin
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Canny-request (<Canny-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Canny-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Canny-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whiterabbit-srv:<Canny-request> is deprecated: use whiterabbit-srv:Canny-request instead.")))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <Canny-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whiterabbit-srv:origin-val is deprecated.  Use whiterabbit-srv:origin instead.")
  (origin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Canny-request>) ostream)
  "Serializes a message object of type '<Canny-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Canny-request>) istream)
  "Deserializes a message object of type '<Canny-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Canny-request>)))
  "Returns string type for a service object of type '<Canny-request>"
  "whiterabbit/CannyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Canny-request)))
  "Returns string type for a service object of type 'Canny-request"
  "whiterabbit/CannyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Canny-request>)))
  "Returns md5sum for a message object of type '<Canny-request>"
  "5d927b78b5235b8ef943f0f8abea7a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Canny-request)))
  "Returns md5sum for a message object of type 'Canny-request"
  "5d927b78b5235b8ef943f0f8abea7a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Canny-request>)))
  "Returns full string definition for message of type '<Canny-request>"
  (cl:format cl:nil "sensor_msgs/Image origin~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Canny-request)))
  "Returns full string definition for message of type 'Canny-request"
  (cl:format cl:nil "sensor_msgs/Image origin~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Canny-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Canny-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Canny-request
    (cl:cons ':origin (origin msg))
))
;//! \htmlinclude Canny-response.msg.html

(cl:defclass <Canny-response> (roslisp-msg-protocol:ros-message)
  ((canny
    :reader canny
    :initarg :canny
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Canny-response (<Canny-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Canny-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Canny-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whiterabbit-srv:<Canny-response> is deprecated: use whiterabbit-srv:Canny-response instead.")))

(cl:ensure-generic-function 'canny-val :lambda-list '(m))
(cl:defmethod canny-val ((m <Canny-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whiterabbit-srv:canny-val is deprecated.  Use whiterabbit-srv:canny instead.")
  (canny m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Canny-response>) ostream)
  "Serializes a message object of type '<Canny-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'canny) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Canny-response>) istream)
  "Deserializes a message object of type '<Canny-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'canny) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Canny-response>)))
  "Returns string type for a service object of type '<Canny-response>"
  "whiterabbit/CannyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Canny-response)))
  "Returns string type for a service object of type 'Canny-response"
  "whiterabbit/CannyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Canny-response>)))
  "Returns md5sum for a message object of type '<Canny-response>"
  "5d927b78b5235b8ef943f0f8abea7a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Canny-response)))
  "Returns md5sum for a message object of type 'Canny-response"
  "5d927b78b5235b8ef943f0f8abea7a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Canny-response>)))
  "Returns full string definition for message of type '<Canny-response>"
  (cl:format cl:nil "sensor_msgs/Image canny~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Canny-response)))
  "Returns full string definition for message of type 'Canny-response"
  (cl:format cl:nil "sensor_msgs/Image canny~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Canny-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'canny))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Canny-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Canny-response
    (cl:cons ':canny (canny msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Canny)))
  'Canny-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Canny)))
  'Canny-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Canny)))
  "Returns string type for a service object of type '<Canny>"
  "whiterabbit/Canny")