;;; init-org.el --- Org config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c c") 'org-capture)

(setq-default
 org-default-notes-file "~/OneDrive/org/refile.org"
 org-agenda-files '("~/OneDrive/org/todo.org")
 org-startup-indented t
 org-refile-use-outline-path 'file
 org-refile-targets '((org-agenda-files :level . 1))
 org-refile-allow-creating-parent-nodes 'confirm
 org-log-done 'time
 org-log-reschedule 'note
 org-log-into-drawer t
 org-todo-keywords '((sequence "TODO(t)" "IN PREOGRESS(i!)" "|" "DONE(d!)")
		     (sequence "HOLD(h!)" "WAITING(w@/!)" "|" "CANCELED(c@/!)"))
 org-todo-keyword-faces  '(("TODO" :foreground "red" :weight bold)
			   ("IN PREOGRESS" :foreground "blue" :weight bold)
			   ("DONE" :foreground "forest green" :weight bold)
			   ("WAITING" :foreground "orange" :weight bold)
			   ("HOLD" :foreground "magenta" :weight bold)
			   ("CANCELED" :foreground "forest green" :weight bold))
 org-capture-templates '(("t" "Todo item" entry (file org-default-notes-file) "* TODO %?\n%U\n" :clock-in t :clock-resume t)
			 ("n" "Note" entry (file org-default-notes-file) "* %?\n:PROPERTIES:\n:TITLE: %i\n:CREATED: %U\n:TAGS: [%i]\n:END:\n")))
(provide 'init-org)

;;; init-org.el ends here
