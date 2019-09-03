;;; init-go.el --- Go config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package go-mode
  :mode ("\\.go" . go-mode)
  :config
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package company-go
  :config
  (add-hook 'go-mode-hook (lambda () (push  'company-go company-backends))))

(use-package go-eldoc
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(provide 'init-go)

;;; init-go.el ends here
