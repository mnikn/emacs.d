;;; init-evil.el --- Evil mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/open-config-file ()
  "Open emacs config file."
  (interactive)
  (find-file (concat user-emacs-directory "init.el")))

(defun mnikn/open-org-dir ()
  "Open org dir"
  (interactive)
  (counsel-find-file "~/OneDrive/org"))

(use-package evil
  :config
  (evil-mode t))

;; (dolist (mode '(flycheck-error-list-mode
;; 		occur-mode))
;;   (add-to-list 'evil-emacs-state-modes mode))

(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c -") 'iedit-mode)
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
    "SPC" 'switch-to-buffer
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
    "cf" 'indent-region
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
    :keymaps 'js2-mode-map
    "cr" 'nodejs-repl-send-buffer)
  (space-leader-def
    :keymaps 'tide-mode-map
    "cj" 'tide-jump-to-definition))

(provide 'init-evil)

;;; init-evil.el ends here
