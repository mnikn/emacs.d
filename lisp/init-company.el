;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'company)
(require-package 'company-quickhelp)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'org-mode-hook '(lambda () (company-mode -1)))


(setq company-auto-complete t)
(setq company-auto-complete-chars nil)
(setq company-dabbrev-code-everywhere t)
(setq company-dabbrev-downcase 2)
(setq company-dabbrev-minimum-length 4)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(global-company-mode t)

(company-quickhelp-mode)


(provide 'init-company)

;;; init-company.el ends here
