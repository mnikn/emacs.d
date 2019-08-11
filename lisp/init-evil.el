;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'evil)
(evil-mode t)

(require-package 'general)
(general-define-key
 :states 'normal
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
 "w1" 'split-window-horizontally
 "w2" 'split-window-vertically
 "wd" 'delete-window
 "c" 'counsel-M-x)

(provide 'init-evil)

;;; init-evil.el ends here
