;; Require packages to be installed
(dolist (package '(python-mode ipython))
  (unless (package-installed-p package)
    (package-install package)))

;; Require python-mode rather than default python
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq ipython-command "/usr/local/bin/ipython")
(setq py-python-command "/usr/local/bin/ipython")
;; (from e-s-k, )
(when (executable-find "ipython")
  (require 'ipython) ;; load only if ipython on path
  (setq org-babel-python-mode 'python-mode))




(require 'ipython)
