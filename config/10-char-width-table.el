;;;
;;; ~/.emacs.d/config/10-char-width-table.el
;;;

(unless (display-graphic-p)
  (set-char-table-range char-width-table #x2010 1)
  (set-char-table-range char-width-table #x2013 1)
  (set-char-table-range char-width-table #x2014 1)
  (set-char-table-range char-width-table #x2018 1)
  (set-char-table-range char-width-table #x2019 1)
  (set-char-table-range char-width-table #x201c 1)
  (set-char-table-range char-width-table #x201d 1)
  (set-char-table-range char-width-table #x2022 1)
  (set-char-table-range char-width-table #x2026 1)
  (set-char-table-range char-width-table #x2192 1)
  (set-char-table-range char-width-table #x21d2 1)
  (set-char-table-range char-width-table #x2212 1)
  (set-char-table-range char-width-table #x2605 1))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
