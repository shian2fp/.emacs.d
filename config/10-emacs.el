;;;
;;; ~/.emacs.d/config/10-emacs.el
;;;

;; do not make backup files.
(setq make-backup-files nil)

;; move the custom file.
(setq custom-file (locate-user-emacs-file "config/00-custom.el"))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
