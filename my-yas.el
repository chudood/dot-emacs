(dolist (package '(yasnippet))
  (unless (package-installed-p package)
    (package-install package)))


(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

