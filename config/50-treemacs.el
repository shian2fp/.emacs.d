;;;
;;; ~/.emacs.d/config/50-treemacs.el
;;;

(init--ensure-package-exist 'treemacs)

(with-eval-after-load 'treemacs
  (setq treemacs-expand-after-init t
        treemacs-tag-follow-cleanup t
        treemacs-missing-project-action 'remove
        treemacs-project-follow-cleanup t
        treemacs-silent-filewatch t
        treemacs-silent-refresh t)
  (treemacs-filewatch-mode t)
  (treemacs-follow-mode t)
  (treemacs-git-mode 'extended)
  (treemacs-hide-gitignored-files-mode t)
  (treemacs-project-follow-mode t))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
