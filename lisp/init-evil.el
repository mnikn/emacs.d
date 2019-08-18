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

(use-package general
  :config
  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "ss" 'sx-search
   "ff" 'find-file
   "fm" 'dired
   "fc" 'open-config-file
   "fr" 'recentf-open-files
   "hf" 'find-function
   "hv" 'find-variable
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
   "cf" 'format-all-buffer
   "ol" 'org-insert-link
   "ot" 'org-todo
   "oc" 'org-capture
   "od" 'org-archive-subtree
   "oa" 'org-agenda
   "oi" 'org-insert-subheading
   "oss" 'org-schedule
   "osd" 'org-schedule
   "or" 'org-refile
   "og" 'org-set-tags))

(provide 'init-evil)

;;; init-evil.el ends here
