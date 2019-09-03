;;; init-lsp.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :config
  (setq-default
    lsp-prefer-flymake nil
    lsp-auto-configure t
    ;; lsp--document-symbols-request-async t
    lsp-auto-guess-root t))
  ;; (add-hook 'js2-mode-hook #'lsp-deferred)
  ;; (add-hook 'typescript-mode-hook #'lsp-deferred)
  ;; (add-hook 'web-mode-hook #'lsp-deferred))

(use-package lsp-ui
  :config
  (setq-default
    lsp-ui-doc-enable nil
    lsp-ui-sideline-enable nil)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package company-lsp
  :config
  (setq-default
    company-lsp--cache-item-candidates 'auto
    company-lsp-async t
    company-lsp-enable-snippet t))
  ;; (push 'company-lsp company-backends)

(provide 'init-lsp)

;;; init-lsp.el ends here
