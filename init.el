;;;
;;; ~/.emacs.d/init.el
;;;

(defvar init--config-directory
  (locate-user-emacs-file "config")
  "The directory where initialization snippets are loaded from.")

(defvar init--config-filename-regexp
  "^[0-9]\\{2\\}-[-0-9A-Za-z]+\\.el[cn]?$"
  "The regular expression that matches filenames for each initialization
snippets.")

(defvar init--config-suffix-regexp
  "\\.el[cn]?$"
  "The regular expression that matches suffixes of filenames for each
initialization snippets.")

(defvar init--lisp-directory
  (locate-user-emacs-file "lisp")
  "The directory where user defined libraries are placed.")

(defun init--get-config-snippets ()
  "Get available config snippets from `init--config-directory'.

Each config snippets must match `init--config-filename-regexp'."
  (when (file-directory-p init--config-directory)
    (directory-files init--config-directory
                     t
                     init--config-filename-regexp)))

(defun init--remove-filename-suffix (path)
  "Remove suffixes that matches `init--config-suffix-regexp'."
  (string-trim-right path init--config-suffix-regexp))

(defun init--load-config-snippets ()
  "Load config snippets from `init--config-directory'."
  (dolist (snippet (delete-dups (mapcar 'init--remove-filename-suffix
                                        (init--get-config-snippets))))
    (let ((exit-point (eval-when-compile (gensym))))
      (catch exit-point
        (handler-bind ((t (lambda (err)
                            (message "Error while loading %s: %s"
                                     (file-name-base snippet)
                                     (error-message-string err))
                            ;;(backtrace)
                            (throw exit-point nil))))
          (load snippet nil nil nil t))))))

(make-directory init--config-directory t)
(make-directory init--lisp-directory t)
(push init--lisp-directory load-path)
(init--load-config-snippets)

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
