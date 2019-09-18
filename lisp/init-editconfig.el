;;; init-editconfig.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/setup-pair-mode ()
  (awesome-pair-mode 1))

(use-package hungry-delete
  :config
  (global-hungry-delete-mode t))

(use-package editorconfig
  :config
  (add-hook 'editorconfig-hack-properties-functions
    '(lambda (props)
       (when (derived-mode-p 'makefile-mode)
         (puthash 'indent_style 2 props))))
  (add-hook 'editorconfig-after-apply-functions
    (lambda (props) (setq web-mode-block-padding 0)))
  (editorconfig-mode t))

(use-package evil-matchit
  :config
  (global-evil-matchit-mode 1))

(add-to-list 'load-path "~/.emacs.d/site-lisp/awesome-pair")
(use-package awesome-pair
  :config
  (add-hook 'emacs-lisp-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'python-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'go-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'js2-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'typescript-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'css-mode-hook 'mnikn/setup-pair-mode)
  (add-hook 'web-mode-hook 'mnikn/setup-pair-mode))

;;  (dolist (hook (list
;;                 'lisp-mode-hook
;;                ))
;;(add-hook hook '(lambda () (awesome-pair-mode 1))))


(provide 'init-editconfig)

;;; init-editconfig.el ends here
