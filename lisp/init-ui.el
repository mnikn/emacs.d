;;; init-ui.el --- Ui config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes
  :config
  (load-theme 'doom-molokai t))

(use-package popwin
  :config
  (popwin-mode t))

(use-package diff-hl
  :config
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (global-diff-hl-mode t))

(use-package ivy
  :config
  (setq-default ivy-use-virtual-buffers t
		ivy-re-builders-alist '((t . ivy--regex-plus)))
  (ivy-mode t))

(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-projectile)

(use-package golden-ratio
  :config
  (golden-ratio-mode 1))


(use-package powerline
  :config
  (powerline-center-evil-theme))

(use-package winum
  :config
  (winum-mode))

(use-package beacon
  :config
  (beacon-mode 1))

(use-package indent-guide
  :commands (indent-guide-mode))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)
(global-linum-mode t)
(set-face-attribute 'default nil :family "Mononoki" :weight 'normal :width 'normal)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#03a1fc")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(provide 'init-ui)

;;; init-ui.el ends here
