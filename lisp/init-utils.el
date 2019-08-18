;;; init-utils.el --- Utils config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;(require-package 'exec-path-from-shell)
;(exec-path-from-shell-initialize)

;; editor config
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq-default load-prefer-newer t)
(setq-default ring-bell-function 'ignore)
(setq-default inhibit-startup-screen t)
(setq-default initial-frame-alist '((fullscreen . maximized)))
;(use-package recentf
;  :config
;  (setq-default recentf-max-menu-items 25)
;  (recentf-mode 1)
;  :general
;  (general-nmap "SPC f r" 'recentf-open-files))

(use-package recentf
  :config
  (setq-default recentf-save-file (expand-file-name "recentf" user-emacs-directory)
        recentf-max-menu-items 15)
  (recentf-mode t))


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
