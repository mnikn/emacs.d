;;; init-utils.el --- Utils config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;(require-package 'exec-path-from-shell)
;(exec-path-from-shell-initialize)

(defun mnikn/open-config-file ()
  "Open emacs config file."
  (interactive)
  (find-file (concat user-emacs-directory "init.el")))

(defun mnikn/open-org-dir ()
  "Open org dir"
  (interactive)
  (counsel-find-file "~/OneDrive/org"))

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

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(use-package dired
  :config
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  (setq-default dired-dwim-target t))
(put 'dired-find-alternate-file 'disabled nil)

;; mode setting
(global-auto-revert-mode t)
(fset 'yes-or-no-p 'y-or-n-p)


(provide 'init-utils)

;;; init-utils.el ends here
