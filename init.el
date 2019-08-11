;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; editor
(electric-pair-mode t)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(setq ring-bell-function 'ignore)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(define-key key-translation-map (kbd "<backtab>") (kbd "C-x C-b"))

(require 'init-package)
(require 'init-window)
(require 'init-ivy)
(require 'init-evil)
(require 'init-company)
(require 'init-flycheck)
(require 'init-theme)
(require 'init-yasnippet)
(require 'init-git)
;; (require 'init-smex)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit popwin general evil smiles-mode smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

;;; init.el ends here
