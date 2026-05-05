;;;
;;; ~/.emacs.d/early-init.el
;;;

(setq default-frame-alist
      `((vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)
        (menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (tab-bar-lines . 0)
        ,@default-frame-alist))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
