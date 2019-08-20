;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package evil
  :config
  (evil-mode t))

;; (dolist (mode '(flycheck-error-list-mode
;; 		occur-mode))
;;   (add-to-list 'evil-emacs-state-modes mode))


(provide 'init-evil)

;;; init-evil.el ends here
