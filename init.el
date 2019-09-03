;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(let ((default-directory "~/.emacs.d/site-lisp"))
;;	(normal-top-level-add-subdirs-to-load-path))

(require 'init-packages)
(require 'init-utils)
(require 'init-emacs-config)
(require 'init-ui)
(require 'init-editconfig)
(require 'init-evil)
(require 'init-git)
(require 'init-company)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-projectile)
(require 'init-lisp)
(require 'init-go)
(require 'init-frontend)
(require 'init-lsp)
(require 'init-ctags)
(require 'init-org)
(require 'init-web)
(require 'init-keybindings)

(setq custom-file (concat user-emacs-directory "custom.el"))
(if (not (file-exists-p custom-file))
    (write-region "" nil custom-file))
(load custom-file)

(provide 'init)

;;; init.el ends here
