;;;
;;; ~/.emacs.d/config/50-slime.el
;;;

(init--ensure-package-exist 'slime)

(with-eval-after-load 'inf-lisp
  (setq inferior-lisp-program
        "sbcl --noinform --no-sysinit --no-userinit"))

(with-eval-after-load 'slime
  (require 'inf-lisp))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
