;;;
;;; ~/.emacs.d/config/50-paredit-mode.el
;;;

(init--ensure-package-exist 'paredit)

(push 'paredit-mode lisp-data-mode-hook)
(push 'paredit-mode lisp-mode-hook)

(push 'paredit-mode emacs-lisp-mode-hook)
(push 'paredit-mode lisp-interaction-mode-hook)

(with-eval-after-load 'scheme
  (push 'paredit-mode scheme-mode-hook))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
