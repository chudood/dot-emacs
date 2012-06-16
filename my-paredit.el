;; Includes braces code and other hooks to do with braces

;; ;;Enable skeleton insert. ' is not enabled by default kus lisp
;; (setq skeleton-pair t)
;; (global-set-key "(" 'skeleton-pair-insert-maybe)
;; (global-set-key "[" 'skeleton-pair-insert-maybe)
;; (global-set-key "{" 'skeleton-pair-insert-maybe)
;; (global-set-key "\"" 'skeleton-pair-insert-maybe)

;; Auto complete ' (everything else is enabled by default)
;; (add-hook 'python-mode-hook 
;; 	  (lambda () 
;; 	    (define-key python-mode-map "'" 'skeleton-pair-insert-maybe)))

(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'python-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'python-mode-hook       (lambda () (paredit-mode +1)))



