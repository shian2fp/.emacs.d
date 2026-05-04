;;;
;;; ~/.emacs.d/config/10-package.el
;;;

(with-eval-after-load 'package
  ;; add community driven package archive.
  (push '("melpa" . "https://melpa.org/packages/")
        package-archives))

(defun init--ensure-package-exist (package &optional autoloads)
  (unless (package-installed-p package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install package)
    (when autoloads
      (require autoloads))))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
