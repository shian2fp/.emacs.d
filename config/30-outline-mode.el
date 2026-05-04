;;;
;;; ~/.emacs.d/config/30-outline-mode.el
;;;

;; the terminal provided by ubuntu use wrong char width for default
;; symbols.
(unless (display-graphic-p)
  (with-eval-after-load 'outline
    (custom-set-icons
     '(outline-open ((symbol " ▾ ")))
     '(outline-close ((symbol " ▸ ")))
     '(outline-close-rtl ((symbol " ◂ ")))
     '(outline-open-in-margins ((symbol "▾")))
     '(outline-close-in-margins ((symbol "▸")))
     '(outline-close-rtl-in-margins ((symbol "◂"))))))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
