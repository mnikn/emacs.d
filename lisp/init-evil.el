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

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(dolist (p '(
              ;; (term-mode . emacs)
              ;; (shell-mode . emacs)
              ;; (eshell-mode . emacs)
              (special-mode . motion)
              (image-mode . emacs)
              (makey-key-mode . emacs)
              (dired-mode . emacs)
              (help-mode . motion)
              (sx-question-list-mode . motion)
              (sx-question-mode . motion)
              (lsp-ui-imenu-mode . emacs)
              (flycheck-error-list-mode . motion)))
  (evil-set-initial-state (car p) (cdr p)))

(provide 'init-evil)

;;; init-evil.el ends here
