;;;
;;; ~/.emacs.d/config/50-setup-ide.el
;;;

(defun setup-ide ()
  (interactive)
  (windmove-default-keybindings)
  (setq fit-window-to-buffer-horizontally t
        window-sides-vertical t)
  (setq display-buffer-alist
        '(((major-mode . compilation-mode)
           display-buffer-in-side-window
           (side . bottom)
           (slot . 1)
           (preserve-size . (nil . t))
           (window-parameters . ((no-other-window . t)
                                 (no-delete-other-windows . t))))))
  (setq treemacs-is-never-other-window t)
  (keymap-global-set "M-0" 'treemacs-select-window)
  (treemacs))

;;; Local Variables:
;;; mode: emacs-lisp
;;; coding: utf-8-unix
;;; End:
