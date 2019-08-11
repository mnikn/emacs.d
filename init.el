;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; editor
(electric-pair-mode t)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "C-`") 'delete-window)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(require 'init-package)
;; (require 'init-smex)
(require 'init-ivy)
(require 'init-evil)
(require 'init-company)
(require 'init-flycheck)
(require 'init-theme)
(require 'init-yasnippet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (general evil smiles-mode smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

;;; init.el ends here
