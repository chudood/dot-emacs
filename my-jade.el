(dolist (package '(jade-mode sws-mode))
  (unless (package-installed-p package)
    (package-install package)))

(require 'jade-mode)
(require 'sws-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
