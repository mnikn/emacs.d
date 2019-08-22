;;; init-keybindings.el --- Keybindings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; editor
(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c -") 'iedit-mode)
(global-set-key (kbd "C-s") 'swiper)

;; emacs
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "<backtab>") 'switch-to-buffer)
(global-set-key (kbd "C-c c") 'org-capture)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

;; windows
(global-set-key (kbd "C-c h") 'split-and-follow-horizontally)
(global-set-key (kbd "C-c v") 'split-and-follow-vertically)
(global-set-key (kbd "C-c d") 'delete-window)
(global-set-key (kbd "C-c C-d") 'kill-buffer-and-window)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(use-package general
  :config
  (general-evil-setup)
  (general-create-definer space-leader-def
    :prefix "SPC"
    :states '(normal visual))
  (space-leader-def
    "=" 'er/expand-region
    "-" 'iedit-mode
    "/" 'evilnc-comment-or-uncomment-lines
    "?" 'sx-search
    "[" 'split-and-follow-vertically
    "]" 'split-and-follow-horizontally
    "." 'delete-indentation
    "\\" 'counsel-projectile-find-file
    "RET" 'editorconfig-format-buffer
    "a" 'mark-whole-buffer
    "SPC" 'switch-to-buffer
    "s" 'counsel-projectile-ag
    "ff" 'find-file
    "fm" 'dired-jump
    "fc" 'mnikn/open-config-file
    "fo" 'mnikn/open-org-dir
    "fr" 'recentf-open-files
    "hf" 'counsel-describe-function
    "hv" 'counsel-describe-variable
    "hk" 'describe-key
    "hm" 'describe-mode
    "bb" 'switch-to-buffer
    "be" 'eval-buffer
    "bw" 'kill-buffer-and-window
    "bk" 'kill-buffer
    "<left>" 'windmove-left
    "<right>" 'windmove-right
    "<up>" 'windmove-up
    "<down>" 'windmove-down
    "wv" 'split-and-follow-vertically
    "wh" 'split-and-follow-horizontally
    "wd" 'delete-window
    "m" 'counsel-M-x
    "g" 'magit
    "p" 'projectile-command-map
    "cs" 'swiper
    "cj" 'dumb-jump-go
    "cb" 'dumb-jump-back
    "ol" 'org-insert-link
    "ot" 'org-todo
    "oc" 'org-capture
    "od" 'org-archive-subtree
    "oa" 'org-agenda
    "oi" 'org-insert-subheading
    "op" 'org-set-property
    "oss" 'org-schedule
    "osd" 'org-deadline
    "or" 'org-refile
    "og" 'org-set-tags)

  (space-leader-def
    :keymaps 'js2-mode-map
    "cr" 'nodejs-repl-send-buffer))


(provide 'init-keybindings)

;;; init-keybindings.el ends here
