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
    ;; (package-refresh-contents)
    (when (not (package-installed-p package))
      (message "install package: %s" package)
      (package-install package))))

(setq my-package-list '(
			use-package
			;; emacs config
			ivy
			counsel
			swiper
			exec-path-from-shell
			evil
			general
			monokai-theme
			hungry-delete
			popwin
			which-key
			powerline
			;; project mangement
			projectile
			counsel-projectile
			magit
			;; editor
			company
			company-quickhelp
			editorconfig
			yasnippet
			yasnippet-snippets
			diff-hl
			evil-nerd-commenter
			expand-region
			iedit
			;; langs
			web-mode
			js2-mode
			nodejs-repl
			tide
			go-mode
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
