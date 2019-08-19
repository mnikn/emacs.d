;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun open-config-file ()
  "Open emacs config file."
  (interactive)
  (find-file (concat user-emacs-directory "init.el")))

(use-package evil
  :config
  (evil-mode t))

(use-package evil-nerd-commenter)

(use-package general
  :config
  (general-evil-setup)
  (general-create-definer space-leader-def
    :prefix "SPC"
    :states '(normal visual))
  (space-leader-def
    "ss" 'sx-search
    "ff" 'find-file
    "fm" 'dired
    "fc" 'open-config-file
    "fr" 'recentf-open-files
    "hf" 'counsel-describe-function
    "hv" 'counsel-describe-variable
    "hk" 'describe-key
    "hm" 'describe-mode
    "bs" 'switch-to-buffer
    "be" 'eval-buffer
    "bw" 'kill-buffer-and-window
    "bk" 'kill-buffer
    "<left>" 'windmove-left
    "<right>" 'windmove-right
    "<up>" 'windmove-up
    "<down>" 'windmove-down
    "w1" 'split-and-follow-vertically
    "w2" 'split-and-follow-horizontally
    "w3" 'delete-window
    "wd" 'delete-window
    "m" 'counsel-M-x
    "gs" 'magit-status
    "gl" 'magit-log-current
    "p" 'projectile-command-map
    "cf" 'indent-region
    "cc" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cs" 'swiper
    "ol" 'org-insert-link
    "ot" 'org-todo
    "oc" 'org-capture
    "od" 'org-archive-subtree
    "oa" 'org-agenda
    "oi" 'org-insert-subheading
    "oss" 'org-schedule
    "osd" 'org-deadline
    "or" 'org-refile
    "og" 'org-set-tags)
  (space-leader-def
    :keymaps 'magit-mode-map
    "<left>" 'windmove-left
    "<right>" 'windmove-right
    "<up>" 'windmove-up
    "<down>" 'windmove-down
    "bw" 'kill-buffer-and-window
    "m" 'counsel-M-x)

  (space-leader-def
    :keymaps 'js2-mode-map
    "cr" 'nodejs-repl-send-buffer)
  (space-leader-def
    :keymaps 'tide-mode-map
    "cj" 'tide-jump-to-definition))


(provide 'init-evil)

;;; init-evil.el ends here
