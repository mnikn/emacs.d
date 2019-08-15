;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; editor
(electric-pair-mode t)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(fset 'yes-or-no-p 'y-or-n-p)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "<backtab>") 'switch-to-buffer)

(require 'init-package)
(require 'init-window)
(require 'init-ivy)
(require 'init-company)
(require 'init-flycheck)
(require 'init-theme)
(require 'init-yasnippet)
(require 'init-git)
(require 'init-projectile)
(require 'init-langs)
(require 'init-ctags)
(require 'init-evil)

;; (require 'init-smex)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete t)
 '(company-auto-complete-chars (quote (32 41 39)))
 '(company-dabbrev-downcase 2)
 '(company-dabbrev-minimum-length 4)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-show-numbers t)
 '(flycheck-emacs-lisp-load-path (quote ("/root/.emacs.d/lisp")))
 '(package-selected-packages
	 (quote
		(company-lsp lsp-ui lsp-mode company-quickhelp company-help-mode tide js2-mode counsel-projectile treemacs-icons-dired treemacs-magit treemacs-projectile treemacs-evil treemacs projectile magit general evil smiles-mode smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

;;; init.el ends here
