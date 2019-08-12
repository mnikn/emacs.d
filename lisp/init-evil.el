;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'evil)
(evil-mode t)

(require-package 'general)
(general-define-key
 :states '(normal visual)
 :prefix "SPC"
 "s" 'swiper
 "ff" 'find-file
 "fm" 'dired
 "hf" 'find-function
 "hv" 'find-variable
 "bs" 'switch-to-buffer
 "be" 'eval-buffer
 "bk" 'kill-buffer-and-window
 "<left>" 'windmove-left
 "<right>" 'windmove-right
 "<up>" 'windmove-up
 "<down>" 'windmove-down
 "wv" 'split-and-follow-vertically
 "wr" 'split-and-follow-horizontally
 "wd" 'delete-window
 "c" 'counsel-M-x
 "gs" 'magit-status
 "gl" 'magit-log-current
 "p" 'projectile-command-map)

(provide 'init-evil)

;;; init-evil.el ends here
