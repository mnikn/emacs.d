;;; init-ui.el --- Ui config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes
    :ensure t
    :config
    (load-theme 'doom-dracula t))
    ;; (load-theme 'doom-flatwhite t))
    ;; (load-theme 'doom-molokai t))

(use-package popwin
    :ensure t
    :config
    (popwin-mode t))

(use-package diff-hl
    :ensure t
    :config
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
    (global-diff-hl-mode t))

(use-package ivy
    :ensure t
    :config
    (setq-default
        ivy-use-virtual-buffers t
        ivy-re-builders-alist '((t . ivy--regex-plus)))
    (ivy-mode t))

(use-package treemacs
    :ensure t
    :commands (treemacs)
    :config
    (setq treemacs-width 50))
(use-package treemacs-evil
    :ensure t
    :after (treemacs))
(use-package treemacs-projectile
    :ensure t
    :after (treemacs))


(use-package powerline
    :ensure t
    :config
    (powerline-center-evil-theme))

(use-package winum
    :ensure t
    :config
    (winum-mode))

;; (use-package beacon
;;     :ensure t
;;     :config
;;     (beacon-mode 1))

(use-package indent-guide
    :commands (indent-guide-mode))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)
(global-linum-mode t)
;; (set-face-attribute 'default nil :family "Mononoki" :weight 'normal :width 'normal)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#03a1fc")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(defun set-buffer-text-scale ()
  "Set the text scale to 1 for the current buffer."
  (interactive)
  (text-scale-set 1))
(add-hook 'find-file-hook 'set-buffer-text-scale)

(provide 'init-ui)

;;; init-ui.el ends here
