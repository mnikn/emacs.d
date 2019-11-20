;;; init-editconfig.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(use-package hungry-delete
    :ensure t
    :config
    (global-hungry-delete-mode t))

(use-package editorconfig
    :ensure t
    :config
    (add-hook 'editorconfig-hack-properties-functions
        '(lambda (props)
             (when (derived-mode-p 'makefile-mode)
                 (puthash 'indent_style 2 props))))
    (add-hook 'editorconfig-after-apply-functions
        (lambda (props) (setq web-mode-block-padding 0)))
    (editorconfig-mode t))

(use-package avy
    :ensure t
    :commands (avy-goto-char-2))

(use-package expand-region
    :ensure t
    :commands (er/expand-region))

(use-package iedit
    :ensure t
    :commands (iedit-mode))

(use-package evil-nerd-commenter
    :ensure t
    :commands (evilnc-comment-or-uncomment-lines))

(provide 'init-editconfig)

;;; init-editconfig.el ends here
