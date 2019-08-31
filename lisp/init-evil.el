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
              (shell-mode . emacs)
              (eshell-mode . emacs)
              (dired-mode . emacs)
              (help-mode . motion)
              (sx-question-list-mode . motion)
              (sx-question-mode . motion)
              (flycheck-error-list-mode . motion)))
  (evil-set-initial-state (car p) (cdr p)))

(provide 'init-evil)

;;; init-evil.el ends here
