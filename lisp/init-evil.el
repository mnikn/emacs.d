;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package evil
  :config
  (evil-mode t))

(use-package evil-escape
  :config
  (setq-default
    evil-escape-key-sequence "jk"
    evil-escape-delay 0.2)
  (evil-escape-mode t))

(dolist (p '(
              (term-mode . emacs)
              (help-mode . emacs)
              (shell-mode . emacs)
              (eshell-mode . emacs)
              (dired-mode . emacs)
              (flycheck-error-list-mode . emacs)))
  (evil-set-initial-state (car p) (cdr p)))

(provide 'init-evil)

;;; init-evil.el ends here
