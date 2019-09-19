;;; init-packages.el --- Package config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)


(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given package."
  (cond
    ((package-installed-p package min-version)
      t)
    ((or (assoc package package-archive-contents) no-refresh)
      (package-install package))
    (t
      (package-refresh-contents)
      (require-package package min-version t))))

(defun install-packages (package-list)
  "Install packages if not exists."
  (dolist (package package-list)
    (when (not (package-installed-p package))
      (package-refresh-contents)
      (message "install package: %s" package)
      (package-install package))))

(setq my-package-list '(
                         use-package
                         ;; emacs config
                         ivy
                         counsel
                         swiper
                         exec-path-from-shell
                         helm
                         helm-dash
                         evil
                         general
                         monokai-theme
                         golden-ratio
                         winum
                         beacon
                         powerline
                         hungry-delete
                         popwin
                         wgrep
                         restart-emacs
                         pyim
                         pyim-basedict
                         rainbow-delimiters
                         doom-themes
                         treemacs
                         treemacs-evil
                         treemacs-projectile
                         ;; project mangement
                         projectile
                         counsel-projectile
                         magit
                         ;; editor
                         company
                         company-go
                         company-quickhelp
                         editorconfig
                         yasnippet
                         yasnippet-snippets
                         diff-hl
                         evil-matchit
                         evil-nerd-commenter
                         evil-escape
                         expand-region
                         iedit
                         avy
                         evil-surround
                         counsel-etags
                         flycheck
                         lsp-mode
                         lsp-ui
                         company-lsp
                         ;; langs
                         web-mode
                         json-mode
                         js2-mode
                         rjsx-mode
                         nodejs-repl
                         typescript-mode
                         go-mode
                         go-eldoc
                         elpy
                         ;; web
                         sx
                         ))
(setq-default package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                                  ("melpa" . "http://elpa.emacs-china.org/melpa/"))
  package-selected-packages my-package-list)
(install-packages my-package-list)
(eval-when-compile
  (add-to-list 'load-path (concat user-emacs-directory "elpa"))
  (require 'use-package))


(provide 'init-packages)

;;; init-packages.el ends here
