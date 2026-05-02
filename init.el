;;;
;;; ~/.emacs.d/init.el
;;;

(defvar init-loader-directory
  (locate-user-emacs-file "init.d")
  "The directory where init scripts are loaded from.")

(defvar init-loader-filename-regexp
  "^[0-9]\\{2\\}-[-0-9A-Za-z]+\\.el[cn]?$"
  "The regular expression that matches filenames for init scripts.")

(defvar init-loader-suffix-regexp
  "\\.el[cn]?$"
  "The regular expression that matches file suffix for init scripts.")

(defun init-loader-get-init-scripts ()
  "Get init scripts under `init-loader-directory'.

Files which do not match `init-loader-filename-regexp' are ignored."
  (when (file-directory-p init-loader-directory)
    (directory-files init-loader-directory
                     t
                     init-loader-filename-regexp)))

(defun init-loader-remove-suffix (pathname)
  "Remove suffixes designated by `init-loader-suffix-regexp'."
  (string-trim-right pathname init-loader-suffix-regexp))

(defun init-loader-get-init-scripts-without-suffix ()
  "Get init scripts like `init-loader-get-init-scripts'.

Suffixes for each filenames are removed by `init-loader-remove-suffix'."
  (delete-dups (mapcar 'init-loader-remove-suffix
                       (init-loader-get-init-scripts))))

(defun init-loader-load-init-scripts ()
  "Load init scripts under `init-loader-directory'."
  (dolist (path (init-loader-get-init-scripts-without-suffix))
    (condition-case err (load path nil nil nil t)
      (t (message "Error while loading %s: %s"
                  (file-name-base path)
                  (error-message-string err))))))

(init-loader-load-init-scripts)

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
