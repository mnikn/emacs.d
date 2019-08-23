;;; init-editconfig.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package hungry-delete
  :config
  (global-hungry-delete-mode t))

(use-package aggressive-indent
  :config
  (global-aggressive-indent-mode t))

(use-package editorconfig
  :config
  (add-hook 'editorconfig-hack-properties-functions
	    '(lambda (props)
	       (when (derived-mode-p 'makefile-mode)
		 (puthash 'indent_style 2 props))))
  (add-hook 'editorconfig-after-apply-functions
	    (lambda (props) (setq web-mode-block-padding 0)))
  (editorconfig-mode t))


(provide 'init-editconfig)

;;; init-editconfig.el ends here
