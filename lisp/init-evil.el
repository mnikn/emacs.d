;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

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

(require-package 'evil)
(evil-mode t)

(require-package 'general)
(general-define-key
 :states '(normal visual)
 :prefix "SPC"
 "s" 'swiper
 "ff" 'find-file
 "hf" 'find-function
 "hv" 'find-variable
 "bs" 'switch-to-buffer
 "be" 'eval-buffer
 "bk" 'kill-buffer-and-window
 "<left>" 'windmove-left
 "<right>" 'windmove-right
 "<up>" 'windmove-up
 "<down>" 'windmove-down
 "w1" 'split-and-follow-vertically
 "w2" 'split-and-follow-horizontally
 "wd" 'delete-window
 "c" 'counsel-M-x
 "gs" 'magit-status
 "gl" 'magit-log-current)

(provide 'init-evil)

;;; init-evil.el ends here
