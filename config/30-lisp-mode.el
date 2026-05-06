;;;
;;; ~/.emacs.d/config/30-lisp-mode.el
;;;

(with-eval-after-load 'cl-indent
  (put 'multiple-value-bind
       'common-lisp-indent-function
       '((&whole 6 &rest 1) &body))
  (put 'multiple-value-prog1
       'common-lisp-indent-function
       0)
  (put 'prog1
       'common-lisp-indent-function
       0)
  (put 'prog2
       'common-lisp-indent-function
       0))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
