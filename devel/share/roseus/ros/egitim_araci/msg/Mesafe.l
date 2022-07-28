;; Auto-generated. Do not edit!


(when (boundp 'egitim_araci::Mesafe)
  (if (not (find-package "EGITIM_ARACI"))
    (make-package "EGITIM_ARACI"))
  (shadow 'Mesafe (find-package "EGITIM_ARACI")))
(unless (find-package "EGITIM_ARACI::MESAFE")
  (make-package "EGITIM_ARACI::MESAFE"))

(in-package "ROS")
;;//! \htmlinclude Mesafe.msg.html


(defclass egitim_araci::Mesafe
  :super ros::object
  :slots (_mesafe ))

(defmethod egitim_araci::Mesafe
  (:init
   (&key
    ((:mesafe __mesafe) 0.0)
    )
   (send-super :init)
   (setq _mesafe (float __mesafe))
   self)
  (:mesafe
   (&optional __mesafe)
   (if __mesafe (setq _mesafe __mesafe)) _mesafe)
  (:serialization-length
   ()
   (+
    ;; float64 _mesafe
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mesafe
       (sys::poke _mesafe (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mesafe
     (setq _mesafe (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get egitim_araci::Mesafe :md5sum-) "67ce55637aff33e83a28f98ea42e7243")
(setf (get egitim_araci::Mesafe :datatype-) "egitim_araci/Mesafe")
(setf (get egitim_araci::Mesafe :definition-)
      "float64 mesafe

")



(provide :egitim_araci/Mesafe "67ce55637aff33e83a28f98ea42e7243")


