;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'company)
(require-package 'company-quickhelp)
(add-hook 'after-init-hook 'global-company-mode)
(company-quickhelp-mode)

(provide 'init-company)

;;; init-company.el ends here
