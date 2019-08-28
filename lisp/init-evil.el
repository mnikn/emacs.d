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


(provide 'init-evil)

;;; init-evil.el ends here
