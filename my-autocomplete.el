(dolist (package '(auto-complete))
  (unless (package-installed-p package)
    (package-install package)))


(require 'auto-complete-config nil t)
(add-to-list 'ac-dictionary-directories ".emacs.d/.ac-dict")

(setq ac-dwim t)
(ac-config-default)

(define-key ac-complete-mode-map "\t" 'ac-expand)
(define-key ac-complete-mode-map "\r" 'ac-complete)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

;; Fix yasnippet completion taken from epy 
;; https://github.com/gabrielelanaro/emacs-for-python/blob/master/epy-completion.el

(defun epy-snips-from-table (table)
  (with-no-warnings
    (let ((hashtab (ac-yasnippet-table-hash table))
          (parent (ac-yasnippet-table-parent table))
          candidates)
      (maphash (lambda (key value)
                 (push key candidates))
               hashtab)
      (identity candidates)
      )))

(defun epy-get-all-snips ()
  (require 'yasnippet) ;; FIXME: find a way to conditionally load it
  (let (candidates)
    (maphash
     (lambda (kk vv) (push (epy-snips-from-table vv) candidates)) yas/tables)
    (apply 'append candidates))
  )

