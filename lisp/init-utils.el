;;; init-utils.el --- Utils config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;(require-package 'exec-path-from-shell)
;(exec-path-from-shell-initialize)

;; editor config
(setq-default auto-save-default nil
	      make-backup-files nil
	      create-lockfiles nil
	      load-prefer-newer t
	      ring-bell-function 'ignore
	      inhibit-startup-screen t
	      initial-frame-alist '((fullscreen . maximized)))

(use-package recentf
  :config
  (setq-default recentf-save-file (expand-file-name "recentf" user-emacs-directory)
        recentf-max-menu-items 15)
  (recentf-mode t))

(use-package hungry-delete
  :config
  (global-hungry-delete-mode t))

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

;; mode setting
(global-auto-revert-mode t)
(global-hl-line-mode t)
(global-linum-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)

;; keybind
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "<backtab>") 'switch-to-buffer)

(provide 'init-utils)

;;; init-utils.el ends here
