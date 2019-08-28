;;; init-flycheck.el --- Flycheck config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  (setq flycheck-check-syntax-automatically '(mode-enabled save)))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
