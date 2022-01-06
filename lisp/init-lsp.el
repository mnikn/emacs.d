;;; init-lsp.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(use-package lsp-mode
  :ensure t)

;; (require 'lsp-clients)
;; (use-package lsp-mode
;;   :config
;;   (setq-default
;;     lsp-prefer-flymake nil
;;     lsp-auto-configure nil
;;     lsp-auto-require-clients t
;;     lsp-auto-guess-root t))

;; (use-package lsp-ui
;;   :config
;;   (setq-default
;;     lsp-ui-doc-enable nil
;;     lsp-ui-sideline-enable nil)
;;   (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; (use-package company-lsp
;;   :config
;;   (setq-default
;;     company-lsp--cache-item-candidates 'auto
;;     company-lsp-async t
;;     company-lsp-enable-snippet t))
;;   ;; (push 'company-lsp company-backends)

(provide 'init-lsp)

;;; init-lsp.el ends here
