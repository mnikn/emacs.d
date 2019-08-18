;;; init-frontend.el --- Frontend config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package js2-mode
	:ensure t
	:mode ("\\.js$" . js2-mode))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)))

(add-hook 'js2-mode-hook 'tide-setup)
				 ;(js2-mode . tide-setup)
         ;(typescript-mode . tide-hl-identifier-mode)
																				;(before-save . tide-format-before-save))

(use-package web-mode
	:ensure t
  :mode
  ("\\.html". web-mode)
  ("\\.css". web-mode)
  ("\\.jsx". web-mode)
  ("\\.tsx". web-mode)
  :config
  (defun my/tsx-setup ()
    (when (and (stringp buffer-file-name)
               (string-match "\\.tsx$" buffer-file-name))
      (tide-setup)))
	(defun my/jsx-setup ()
		(when (and (strinp buffer-file-name)
							 (string-match "\\.jsx$" buffer-file-name))
			(js2-mode)))
  (add-hook 'web-mode-hook 'my/tsx-setup)
	(add-hook 'web-mode-hook 'my/jsx-setup))

(provide 'init-frontend)

;;; init-frontend.el ends here
