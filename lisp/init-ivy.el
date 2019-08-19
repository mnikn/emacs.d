;;; init-ivy.el --- Emacs command autocomplete -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; ivy, emacs commands autocomplete
(require-package 'ivy)
(ivy-mode t)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
;(setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
(setq-default ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
(setq-default ivy-initial-inputs-alist '(
				(org-refile . "^")
				(org-agenda-refile . "^")
				(org-capture-refile . "^")
				(counsel-M-x . "^")
				(counsel-describe-function . "^")
				(counsel-describe-variable . "^")
				(counsel-org-capture . "^")
				(Man-completion-table . "^")
				(woman . "^")))

;(setq-default ivy-initial-inputs-alist nil)

;; counsel, enhance ivy commands
(require-package 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; swiper, enhance search
(require-package 'swiper)
(global-set-key (kbd "C-s") 'swiper)
(provide 'init-ivy)

;;; init-ivy.el ends here
