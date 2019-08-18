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
  ;; (package-refresh-contents)
  (dolist (package package-list)
    (if (not (package-installed-p package))
	(message "install package: %s" package)
      (package-install package))))

(package-initialize)
(setq my-package-list '(use-package
			 ;; emacs config
			 ivy
			 counsel
			 swiper
			 evil
			 general
			 monokai-theme
			 hungry-delete
			 ;; project mangement
			 projectile
			 counsel-projectile
			 magit
			 ;; editor
			 company
			 company-quickhelp
			 format-all
			 editorconfig
			 yasnippet
			 yasnippet-snippets
			 ;; langs
			 web-mode
			 js2-mode
			 tide
			 ;; web
			 sx
			 ))
(setq-default package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
				 ("melpa" . "https://elpa.emacs-china.org/melpa/"))
	      package-selected-packages my-package-list)
(install-packages my-package-list)
(eval-when-compile
  (add-to-list 'load-path (concat user-emacs-directory "elpa"))
  (require 'use-package))


(provide 'init-packages)

;;; init-packages.el ends here
