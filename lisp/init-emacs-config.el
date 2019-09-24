;;; init-emacs-config.el --- Emacs common config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; setup gc to speed up
(let ((normal-gc-cons-threshold (* 20 1024 1024))
       (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(use-package recentf
  :config
  (setq-default recentf-save-file (expand-file-name "recentf" user-emacs-directory)
    recentf-max-menu-items 100)
  (recentf-mode t))

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(use-package dired
  :config
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  (setq-default dired-dwim-target t))
(put 'dired-find-alternate-file 'disabled nil)

(use-package helm-dash
  :config
  (setq-default helm-dash-browser-func 'eww))

(use-package pyim)
(use-package pyim-basedict
  :config
  (pyim-basedict-enable))

(setq-default auto-save-default nil
  make-backup-files nil
  create-lockfiles nil
  load-prefer-newer t
  ring-bell-function 'ignore
  case-fold-search t
  delete-selection-mode t
  inhibit-startup-screen t
  indent-tabs-mode nil
  mouse-yank-at-point t
  scroll-preserve-screen-position 'always
  set-mark-command-repeat-pop t
  default-input-method "pyim"
  truncate-lines nil
  truncate-partial-width-windows nil
  scroll-margin 3
  scroll-conservatively 10000
  initial-frame-alist '((fullscreen . maximized)))

(global-auto-revert-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'init-emacs-config)

;;; init-emacs-config.el ends here
