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
  (setq-default dired-dwim-target t)
  (put 'dired-find-alternate-file 'disabled nil))

(use-package pyim
  :commands (toggle-input-method)
  :config
  (set-default pyim-default-scheme 'pyim-shuangpin))
(use-package pyim-basedict
  :after (pyim)
  :config
  (pyim-basedict-enable))

(add-to-list 'load-path "~/.emacs.d/site-lisp/insert-translated-name")
(require 'insert-translated-name)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

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
  enable-recursive-minibuffers t
  initial-frame-alist '((fullscreen . maximized)))

(defadvice switch-to-buffer (before save-buffer-now)
  (if (and
        (not (buffer-file-name))
        (not (equal major-mode 'gnus-group-mode))
        (not (equal major-mode 'occur-mode))
        (not (equal major-mode 'ivy-occur-mode))
        (not (equal major-mode 'shell-mode))
        (not (equal major-mode 'term-mode))
        (save-buffer)))
  (ad-activate 'switch-to-buffer))

(global-auto-revert-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-emacs-config)

;;; init-emacs-config.el ends here
