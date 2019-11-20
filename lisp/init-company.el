;;; init-company.el --- Company config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
    ;; :hook ((after-init . global-company-mode)
    ;;   (org-mode . lambda () (company-mode -1))))
    :ensure t
    :config
    (add-hook 'after-init-hook 'global-company-mode)
    (add-hook 'org-mode-hook '(lambda () (company-mode -1)))
    (add-hook 'rlogin-mode-hook '(lambda () (company-mode -1)))
    (add-hook 'eshell-mode-hook '(lambda () (company-mode -1)))
    (setq-default
        company-auto-complete t
        company-auto-complete-chars nil
        company-dabbrev-code-everywhere t
        company-dabbrev-downcase nil
        company-dabbrev-minimum-length 1
        company-idle-delay 0
        company-minimum-prefix-length 1
        company-show-numbers t))
(use-package company-quickhelp
    :ensure t
    :hook (company-mode . company-quickhelp-mode))


(defvar company-mode/enable-yas t)

(defun company-mode/backend-with-yas (backend)
    (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
        backend
        (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

(provide 'init-company)

;;; init-company.el ends here
