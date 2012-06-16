;; Helper functions

(defun add-something-to-mode-hooks (mode-list something)
  "helper function to add a callback to multiple hooks"
  (dolist (mode mode-list)
    (add-hook (intern (concat (symbol-name mode) "-mode-hook")) something)))
;; usage : (add-something-to-mode-hooks '(c++ tcl emacs-lisp) 'turn-on-fic-mode)
