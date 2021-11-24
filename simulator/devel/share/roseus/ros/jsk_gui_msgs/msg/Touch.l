;; Auto-generated. Do not edit!


(when (boundp 'jsk_gui_msgs::Touch)
  (if (not (find-package "JSK_GUI_MSGS"))
    (make-package "JSK_GUI_MSGS"))
  (shadow 'Touch (find-package "JSK_GUI_MSGS")))
(unless (find-package "JSK_GUI_MSGS::TOUCH")
  (make-package "JSK_GUI_MSGS::TOUCH"))

(in-package "ROS")
;;//! \htmlinclude Touch.msg.html


(defclass jsk_gui_msgs::Touch
  :super ros::object
  :slots (_finger_id _x _y _image_width _image_height ))

(defmethod jsk_gui_msgs::Touch
  (:init
   (&key
    ((:finger_id __finger_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    )
   (send-super :init)
   (setq _finger_id (round __finger_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   self)
  (:finger_id
   (&optional __finger_id)
   (if __finger_id (setq _finger_id __finger_id)) _finger_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:serialization-length
   ()
   (+
    ;; int64 _finger_id
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; int64 _image_width
    8
    ;; int64 _image_height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _finger_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _finger_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _finger_id) (= (length (_finger_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_finger_id . bv) 0) 0) s)
              (write-long (ash (elt (_finger_id . bv) 1) -1) s))
             ((and (class _finger_id) (= (length (_finger_id . bv)) 1)) ;; big1
              (write-long (elt (_finger_id . bv) 0) s)
              (write-long (if (>= _finger_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _finger_id s)(write-long (if (>= _finger_id 0) 0 #xffffffff) s)))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _image_width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _image_width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _image_width) (= (length (_image_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_image_width . bv) 0) 0) s)
              (write-long (ash (elt (_image_width . bv) 1) -1) s))
             ((and (class _image_width) (= (length (_image_width . bv)) 1)) ;; big1
              (write-long (elt (_image_width . bv) 0) s)
              (write-long (if (>= _image_width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _image_width s)(write-long (if (>= _image_width 0) 0 #xffffffff) s)))
     ;; int64 _image_height
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _image_height (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _image_height) (= (length (_image_height . bv)) 2)) ;; bignum
              (write-long (ash (elt (_image_height . bv) 0) 0) s)
              (write-long (ash (elt (_image_height . bv) 1) -1) s))
             ((and (class _image_height) (= (length (_image_height . bv)) 1)) ;; big1
              (write-long (elt (_image_height . bv) 0) s)
              (write-long (if (>= _image_height 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _image_height s)(write-long (if (>= _image_height 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _finger_id
#+(or :alpha :irix6 :x86_64)
      (setf _finger_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _finger_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _image_width
#+(or :alpha :irix6 :x86_64)
      (setf _image_width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _image_width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _image_height
#+(or :alpha :irix6 :x86_64)
      (setf _image_height (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _image_height (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get jsk_gui_msgs::Touch :md5sum-) "d96a284d39fcc410f375ac68fd380177")
(setf (get jsk_gui_msgs::Touch :datatype-) "jsk_gui_msgs/Touch")
(setf (get jsk_gui_msgs::Touch :definition-)
      "# finger_id
int64 finger_id
# touch point(screen point)
float64 x
float64 y
# based image size (usually not needed)
int64 image_width
int64 image_height
")



(provide :jsk_gui_msgs/Touch "d96a284d39fcc410f375ac68fd380177")


