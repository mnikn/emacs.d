;;; init-org.el --- Org config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'org-mode-hook 'toggle-truncate-lines)
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))
(setq org-english-words-file "~/OneDrive/org/english_words.org")
(setq-default
  org-default-notes-file "~/OneDrive/org/refile.org"
  org-agenda-files '("~/OneDrive/org/todo.org" "~/OneDrive/org/notes.org")
  org-drawers '("PROPERTIES" "LOGBOOK")
  org-startup-indented t
  org-refile-use-outline-path 'file
  org-refile-targets '((org-agenda-files :level . 1))
  org-refile-allow-creating-parent-nodes 'confirm
  org-log-done 'time
  org-log-reschedule 'note
  org-log-into-drawer t
  ;; clock
  org-clock-out-when-done t
  org-clock-in-resume t
  org-clock-out-remove-zero-time-clocks t
  org-clock-persist t
  org-clock-into-drawer t
  org-clock-report-include-clocking-task t
  org-todo-keywords '((sequence "TODO(t)" "IN PREOGRESS(i!)" "|" "DONE(d!)")
                       (sequence "HOLD(h!)" "WAITING(w@/!)" "|" "CANCELED(c@/!)"))
  org-todo-keyword-faces  '(("TODO" :foreground "red" :weight bold)
                             ("IN PREOGRESS" :foreground "blue" :weight bold)
                             ("DONE" :foreground "forest green" :weight bold)
                             ("WAITING" :foreground "orange" :weight bold)
                             ("HOLD" :foreground "magenta" :weight bold)
                             ("CANCELED" :foreground "forest green" :weight bold))
  org-capture-templates '(("t" "Todo item" entry (file org-default-notes-file) "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:CATEGORY: %i\n:END:\n")
                           ("n" "Note" entry (file org-default-notes-file) "* %?\n:PROPERTIES:\n:TITLE: %i\n:CREATED: %U\n:TAGS: [%i]\n:END:\n")
                           ("e" "English words" entry (file+headline org-english-words-file "Words") "* %?\n** Meanings\n** Sample\n")))

(org-babel-do-load-languages
  'org-babel-load-languages
  '((python . t)))
(provide 'init-org)

;;; init-org.el ends here
