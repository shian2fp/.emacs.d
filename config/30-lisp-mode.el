;;;
;;; ~/.emacs.d/config/30-lisp-mode.el
;;;

(with-eval-after-load 'cl-indent
  (dolist (pair
           '((defsystem . (4 &rest 2))
             (define-system . (4 &rest 2))
             (destructuring-bind . ((&whole 6 &rest 1) 2 &body))
             (multiple-value-bind . ((&whole 6 &rest 1) 2 &body))
             (multiple-value-prog1 . 0)
             (prog1 . 0)
             (prog2 . 0)))
    (put (car pair) 'common-lisp-indent-function (cdr pair))))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
