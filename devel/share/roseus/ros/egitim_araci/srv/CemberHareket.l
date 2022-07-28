;; Auto-generated. Do not edit!


(when (boundp 'egitim_araci::CemberHareket)
  (if (not (find-package "EGITIM_ARACI"))
    (make-package "EGITIM_ARACI"))
  (shadow 'CemberHareket (find-package "EGITIM_ARACI")))
(unless (find-package "EGITIM_ARACI::CEMBERHAREKET")
  (make-package "EGITIM_ARACI::CEMBERHAREKET"))
(unless (find-package "EGITIM_ARACI::CEMBERHAREKETREQUEST")
  (make-package "EGITIM_ARACI::CEMBERHAREKETREQUEST"))
(unless (find-package "EGITIM_ARACI::CEMBERHAREKETRESPONSE")
  (make-package "EGITIM_ARACI::CEMBERHAREKETRESPONSE"))

(in-package "ROS")





(defclass egitim_araci::CemberHareketRequest
  :super ros::object
  :slots (_yaricap ))

(defmethod egitim_araci::CemberHareketRequest
  (:init
   (&key
    ((:yaricap __yaricap) 0.0)
    )
   (send-super :init)
   (setq _yaricap (float __yaricap))
   self)
  (:yaricap
   (&optional __yaricap)
   (if __yaricap (setq _yaricap __yaricap)) _yaricap)
  (:serialization-length
   ()
   (+
    ;; float64 _yaricap
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaricap
       (sys::poke _yaricap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaricap
     (setq _yaricap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass egitim_araci::CemberHareketResponse
  :super ros::object
  :slots ())

(defmethod egitim_araci::CemberHareketResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass egitim_araci::CemberHareket
  :super ros::object
  :slots ())

(setf (get egitim_araci::CemberHareket :md5sum-) "534fdc954659adaf837ecd56d547676d")
(setf (get egitim_araci::CemberHareket :datatype-) "egitim_araci/CemberHareket")
(setf (get egitim_araci::CemberHareket :request) egitim_araci::CemberHareketRequest)
(setf (get egitim_araci::CemberHareket :response) egitim_araci::CemberHareketResponse)

(defmethod egitim_araci::CemberHareketRequest
  (:response () (instance egitim_araci::CemberHareketResponse :init)))

(setf (get egitim_araci::CemberHareketRequest :md5sum-) "534fdc954659adaf837ecd56d547676d")
(setf (get egitim_araci::CemberHareketRequest :datatype-) "egitim_araci/CemberHareketRequest")
(setf (get egitim_araci::CemberHareketRequest :definition-)
      "float64 yaricap
---

")

(setf (get egitim_araci::CemberHareketResponse :md5sum-) "534fdc954659adaf837ecd56d547676d")
(setf (get egitim_araci::CemberHareketResponse :datatype-) "egitim_araci/CemberHareketResponse")
(setf (get egitim_araci::CemberHareketResponse :definition-)
      "float64 yaricap
---

")



(provide :egitim_araci/CemberHareket "534fdc954659adaf837ecd56d547676d")


