;;;
;;; ~/.emacs.d/config/10-package.el
;;;

(with-eval-after-load 'package
  ;; add community driven package archive.
  (push '("melpa" . "https://melpa.org/packages/")
        package-archives)
  ;; use MELPA only due to `gnu.org' down.
  (setq package-archives
        '(("melpa" . "https://melpa.org/packages/"))))

(defun init--ensure-package-exist (package)
  (unless (package-installed-p package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install package)))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
