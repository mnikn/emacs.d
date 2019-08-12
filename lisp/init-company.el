;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'company)

(setq-default company-dabbrev-downcase 0)
(setq-default company-idle-delay 0)
(setq-default company-minimum-prefix-length 1)
(setq-default company-dabbrev-code-everywhere t)
(setq-default company-dabbrev-code-ignore-case t)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)

;;; init-company.el ends here
