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

(use-package popwin
  :config
  (popwin-mode t))

(use-package diff-hl
  :config
  (global-diff-hl-mode t))

(use-package dired
  :config
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  (setq-default dired-dwim-target t))
(use-package dired-x)

(use-package which-key
  :config
  (which-key-mode t))

(use-package powerline
  :config
  (powerline-center-evil-theme))

;; mode setting
(global-auto-revert-mode t)
(electric-indent-mode t)
(global-hl-line-mode t)
(global-linum-mode t)
(savehist-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)

;; keybind
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "<backtab>") 'switch-to-buffer)

(provide 'init-utils)

;;; init-utils.el ends here
