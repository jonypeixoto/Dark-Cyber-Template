; In a land shrouded in mystery...

(defvar *cyber-name* "Dark Cyber")
(defvar *construction-year* 1100)
(defvar *destruction-year* 1678)

(defun calc-duration ()
  (- *destruction-year* *construction-year*))

(format t "The duration of ~a was ~a years.~%" *cyber-name* (calc-duration))

; ...there stood a Dark Cyber
