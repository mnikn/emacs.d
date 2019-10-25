;;; init-flycheck.el --- Flycheck config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  (add-hook 'go-mode-hook #'flycheck-mode)
  (add-hook 'js2-mode-hook #'flycheck-mode)
  (add-hook 'typescript-mode-hook #'flycheck-mode)
  (add-hook 'web-mode-hook #'flycheck-mode))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
