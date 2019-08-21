;;; init-keybindings.el --- Keybindings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c -") 'iedit-mode)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(global-set-key (kbd "<backtab>") 'switch-to-buffer)
(global-set-key (kbd "C-c c") 'org-capture)

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
    "cr" 'nodejs-repl-send-buffer)
  (space-leader-def
    :keymaps 'tide-mode-map
    "cj" 'tide-jump-to-definition))


(provide 'init-keybindings)

;;; init-keybindings.el ends here
