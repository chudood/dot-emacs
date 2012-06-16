
(require 'nginx-mode) ;; nginx mode
(add-hook 'find-file-hook 
	  (lambda () 
	    (if (string= (substring default-directory 0 10) "/etc/nginx" )
		(nginx-mode)
		  )))
