;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'company)
(require-package 'company-quickhelp)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'org-mode-hook '(lambda () (company-mode -1)))


(setq-default company-auto-complete t)
(setq-default company-auto-complete-chars nil)
(setq-default company-dabbrev-code-everywhere t)
(setq-default company-dabbrev-downcase 2)
(setq-default company-dabbrev-minimum-length 1)
(setq-default company-idle-delay 0)
(setq-default company-minimum-prefix-length 1)
(setq-default company-show-numbers t)
(global-company-mode t)

(company-quickhelp-mode)


(provide 'init-company)

;;; init-company.el ends here
