;;;
;;; ~/.emacs.d/config/10-emacs.el
;;;

;; do not make backup files.
(setq make-backup-files nil)

;; move the custom file.
(setq custom-file (locate-user-emacs-file "config/00-custom.el"))

;; use `column-number-mode'.
(column-number-mode t)

;; use `line-number-mode'.
(line-number-mode t)

;; set language environment.
(set-language-environment "Japanese")

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
