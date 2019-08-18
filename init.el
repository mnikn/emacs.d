;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(let ((default-directory "~/.emacs.d/site-lisp"))
;;	(normal-top-level-add-subdirs-to-load-path))


(require 'init-packages)
(require 'init-evil)
(require 'init-utils)
(require 'init-window)
(require 'init-ivy)
(require 'init-company)
(require 'init-flycheck)
(require 'init-theme)
(require 'init-yasnippet)
(require 'init-git)
(require 'init-projectile)
(require 'init-langs)
(require 'init-lisp)
(require 'init-frontend)
(require 'init-ctags)
;;(require 'init-confluence)
;;(require 'init-jira)
(require 'init-org)
(require 'init-browser)

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
