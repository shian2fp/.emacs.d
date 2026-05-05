;;;
;;; ~/.emacs.d/config/50-misc-packages.el
;;;
;;; install packages which have no dedicated config files.
;;;

(init--ensure-package-exist 'apache-mode)
(init--ensure-package-exist 'apparmor-mode)
(init--ensure-package-exist 'cmake-mode)
(init--ensure-package-exist 'git-modes)
(init--ensure-package-exist 'gnuplot)
(init--ensure-package-exist 'markdown-mode)
(init--ensure-package-exist 'nftables-mode)
(init--ensure-package-exist 'systemd)
(init--ensure-package-exist 'web-mode)

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
