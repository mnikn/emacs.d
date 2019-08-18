;;; init-frontend.el --- Frontend config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package js2-mode
  :mode ("\\.js$" . js2-mode))

(use-package tide
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)))

(add-hook 'js2-mode-hook 'tide-setup)

(use-package web-mode
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
    (when (and (stringp buffer-file-name)
	       (string-match "\\.jsx$" buffer-file-name))
      (flycheck-add-mode 'javascript-eslint 'web-mode)
      (js2-mode)))
  (add-hook 'web-mode-hook 'my/tsx-setup)
  (add-hook 'web-mode-hook 'my/jsx-setup))

(provide 'init-frontend)

;;; init-frontend.el ends here
