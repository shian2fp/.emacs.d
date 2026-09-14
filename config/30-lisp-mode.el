;;;
;;; ~/.emacs.d/config/30-lisp-mode.el
;;;

(with-eval-after-load 'cl-indent
  (dolist (pair '((defcallback . (4 4 (&whole 6 &rest 1) &body))
                  (defcenum . (4 &rest 2))
                  (defcstruct . (4 &rest 2))
                  (defsystem . (4 &rest 2))
                  (define-system . (4 &rest 2))
                  (multiple-value-bind . ((&whole 6 &rest 1) nil &body))
                  (multiple-value-prog1 . 0)
                  (prog1 . 0)
                  (prog2 . 0)
                  (with-accessors . ((&whole 6 &rest 1) nil &body))
                  (with-slots . ((&whole 6 &rest 1) nil &body))))
    (put (car pair) 'common-lisp-indent-function (cdr pair))))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
