

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My org-functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun org-screenshot ()
  "Take a screenshot into a time stamped unique-named file and then puts it in a hidden subdirectory and then displays the image"
  (interactive)
  (ignore-errors
    (make-directory
     (concat "." (buffer-name))))
  (setq filename
	(concat
	 (make-temp-name
	  (concat 
	   default-directory
	   "."
	   (buffer-name)
	   "/"
	   (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  
  (call-process "scrot" nil nil nil "-s" filename)
  (insert (concat "[[" filename "]]"))
  (iimage-mode 1)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-keybinds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

