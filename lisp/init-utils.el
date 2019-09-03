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

(defun split-and-follow-horizontally ()
  "Create horizontally window and switch."
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))

(defun split-and-follow-vertically ()
  "Create vertically window and switch."
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))

(defun mnikn/evil-move-up ()
  "Move 10 lines up"
  (interactive)
  (evil-previous-line 10))

(defun mnikn/evil-move-down ()
  "Move 10 lines down"
  (interactive)
  (evil-next-line 10))

(defun mnikn/evil-newline-below ()
  "Newline below in evil"
  (interactive)
  (evil-open-below 1)
  (evil-force-normal-state))

(defun mnikn/evil-newline-above ()
  "Newline below in evil"
  (interactive)
  (evil-open-above 1)
  (evil-force-normal-state))

(provide 'init-utils)

;;; init-utils.el ends here
