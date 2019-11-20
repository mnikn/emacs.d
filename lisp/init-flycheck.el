;;; init-flycheck.el --- Flycheck config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
    :ensure t
    :hook ((go-mode . flycheck-mode)
              (js2-mode . flycheck-mode)
              (typescript-mode . flycheck-mode)
              (web-mode . flycheck-mode)
              ))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
