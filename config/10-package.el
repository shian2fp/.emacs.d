;;;
;;; ~/.emacs.d/config/10-package.el
;;;

(require 'package)

(push '(melpa . "https://melpa.org/packages/")
      package-archives)

(package-initialize)

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
