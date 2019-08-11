;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'evil)
(evil-mode t)

(require-package 'general)
(general-define-key
 :states 'normal
 :prefix "SPC"
 "ff" 'find-file
 "hf" 'find-function
 "hv" 'find-variable
 "bs" 'switch-to-buffer
 "be" 'eval-buffer
 "bk" 'kill-buffer-and-window)

;; (require-package 'evil-leader)
;; (global-evil-leader-mode)
;; (setq evil-leader/in-all-states t)
;; (evil-leader/set-leader ",")
;;(evil-leader/set-key
;;  "b" 'switch-to-buffer)

(provide 'init-evil)

;;; init-evil.el ends here
