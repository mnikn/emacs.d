;;; init-ui.el --- Ui config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package monokai-theme
  :config
  (load-theme 'monokai t))

(use-package popwin
  :config
  (popwin-mode t))

(use-package diff-hl
  :config
  (global-diff-hl-mode t))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)
(global-linum-mode t)
(set-face-attribute 'region nil :background "#034efc")

(provide 'init-ui)

;;; init-ui.el ends here
