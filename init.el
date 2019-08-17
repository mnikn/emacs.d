;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(let ((default-directory "~/.emacs.d/site-lisp"))
	(normal-top-level-add-subdirs-to-load-path))

;; editor
(electric-pair-mode t)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq load-prefer-newer t)
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(fset 'yes-or-no-p 'y-or-n-p)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "<backtab>") 'switch-to-buffer)

(require 'init-packages)
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
(require 'init-utils)
(require 'init-confluence)
(require 'init-jira)
(require 'init-org)
(require 'init-evil)

;; (require 'init-smex)

(setq custom-file (concat user-emacs-directory "custom.el"))
(if (not (file-exists-p custom-file))
		(write-region "" nil custom-file))
(load custom-file)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote eww-browse-url))
 '(company-auto-complete t)
 '(company-auto-complete-chars nil)
 '(company-dabbrev-code-everywhere t)
 '(company-dabbrev-downcase 2)
 '(company-dabbrev-minimum-length 4)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-show-numbers t)
 '(package-selected-packages
	 (quote
		(org-jira exec-path-from-shell format-all company-lsp lsp-ui lsp-mode company-quickhelp company-help-mode tide js2-mode counsel-projectile treemacs-icons-dired treemacs-magit treemacs-projectile treemacs-evil treemacs projectile magit general evil smiles-mode smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

;;; init.el ends here
