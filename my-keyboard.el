;; This is neccessary for windows
(setq w32-pass-lwindow-to-system nil 
      w32-pass-rwindow-to-system nil 
      w32-pass-apps-to-system nil 
      w32-lwindow-modifier 'super ; Left Windows key 
      w32-rwindow-modifier 'super ; Right Windows key 
      w32-apps-modifier 'hyper) 

(global-set-key (kbd "C-z") 'undo)

;; Shortcuts ot open files
(global-set-key (kbd "s-i") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))



