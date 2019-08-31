;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  ;; :hook ((after-init . global-company-mode)
  ;; 	 (org-mode . lambda () (company-mode -1))))
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'org-mode-hook '(lambda () (company-mode -1)))
  (setq-default company-auto-complete t
		company-auto-complete-chars nil
		company-dabbrev-code-everywhere t
		company-dabbrev-downcase 2
		company-dabbrev-minimum-length 1
		company-idle-delay 0
		company-minimum-prefix-length 1
		company-show-numbers t))
(use-package company-quickhelp
  :hook (company-mode . company-quickhelp-mode))
(use-package company-lsp
  :config
  (setq-default
    company-lsp--cache-item-candidates 'auto
    company-lsp-async t
    company-lsp-enable-snippet t)
  (push 'company-lsp company-backends))


(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

(use-package lsp-mode
  :defer t
  :init
  (setq-default
    lsp-prefer-flymake nil
    lsp-auto-configure t
    lsp-auto-guess-root t)
  (add-hook 'js2-mode-hook #'lsp-deferred)
  (add-hook 'typescript-mode-hook #'lsp-deferred)
  (add-hook 'web-mode-hook #'lsp-deferred))

(use-package lsp-ui
  :defer t
  :init
  (setq-default
    lsp-ui-doc-enable nil
    lsp-ui-sideline-enable nil)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(provide 'init-company)

;;; init-company.el ends here
