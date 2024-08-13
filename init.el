;;; init.el --- Emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(add-to-list 'load-path "~/.emacs.d/site-lisp/evil-magit")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Calls (package-initialize)
(require 'init-packages)
(require 'init-utils)
(require 'init-emacs-config)
(require 'init-ui)
(require 'init-editconfig)
(require 'init-evil)
(require 'init-git)
(require 'init-term)
;; (require 'init-company)
;; (require 'init-flycheck)
;; (require 'init-yasnippet)
(require 'init-projectile)
(require 'init-lisp)
(require 'init-go)
(require 'init-frontend)
(require 'init-godot)
;; (require 'init-python)
(require 'init-lua)
(require 'init-lsp)
(require 'init-org)
(require 'init-web)
(require 'init-keybindings)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;;; init.el ends here
