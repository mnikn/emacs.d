;;; init-langs.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

																				;(require-package 'lsp-mode)
																				;(add-hook 'prog-mode-hook #'lsp)

																				;(require-package 'lsp-ui)
																				;(add-hook 'lsp-mode-hook 'lsp-ui-mode)

																				;(require-package 'company-lsp)
																				;(push 'company-lsp company-backends)

																				;(require-package 'js2-mode)
																				;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
																				;(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))
																				;(add-hook 'js-mode-hook 'js2-minor-mode)
																				;(add-hook 'js2-mode-hook #'lsp)

																				;(require-package 'web-mode)
																				;(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
																				;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
																				;(add-hook 'web-mode-hook #'lsp)

(require-package 'format-all)
(use-package editorconfig
	:ensure t
	:config
	(add-hook 'editorconfig-hack-properties-functions
						'(lambda (props)
							 (when (derived-mode-p 'makefile-mode)
								 (puthash 'indent_style 2 props))))
	(add-hook 'editorconfig-after-apply-functions
						(lambda (props) (setq web-mode-block-padding 0)))
	;(add-hook 'projectile-switch-project-action 'editorconfig-apply)
	(editorconfig-mode 1))


(provide 'init-langs)

;;; init-langs.el ends here
