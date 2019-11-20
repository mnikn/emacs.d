;;; init-org.el --- Org config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'org-mode-hook 'toggle-truncate-lines)
(use-package org-bullets
    :ensure t
    :config
    (add-hook 'org-mode-hook 'org-bullets-mode))
(setq org-english-words-file "~/OneDrive/org/english_words.org")
(setq-default
    org-default-notes-file "~/OneDrive/org/refile.org"
    org-agenda-files '("~/OneDrive/org/gtd.org" "~/OneDrive/org/activity.org")
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
    org-tag-alist '((:startgroup . nil)
                       ("TASK" . ?t)
                       ("METTING" . ?m)
                       ("WORK" . ?w)
                       ("PERSONAL" . ?p)
                       ("NOTE" . ?n))
    org-todo-keywords '((sequence "TODO(t)" "IN PREOGRESS(i!)" "|" "DONE(d!)")
                           (sequence "HOLD(h!)" "WAITING(w@/!)" "|" "CANCELED(c@/!)"))
    org-todo-keyword-faces  '(("TODO" :foreground "red" :weight bold)
                                 ("IN PREOGRESS" :foreground "blue" :weight bold)
                                 ("DONE" :foreground "forest green" :weight bold)
                                 ("WAITING" :foreground "orange" :weight bold)
                                 ("HOLD" :foreground "magenta" :weight bold)
                                 ("CANCELED" :foreground "forest green" :weight bold))
    org-capture-templates '(("t" "Todo item" entry (file org-default-notes-file) "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n")
                               ("n" "Note" entry (file org-default-notes-file) "* %? %U\n")
                               ("e" "English words" entry (file+headline org-english-words-file "Words") "* %?\n** Meanings\n** Sample\n")))

(org-babel-do-load-languages
    'org-babel-load-languages
    '((python . t)
         (emacs-lisp . t)
         (shell . t)
         (C . t)
         (js . t)))

(use-package deft
    :ensure t
    :config
    (setq-default
        deft-recursive t
        deft-use-filename-as-title t
        deft-file-naming-rules '((noflash . "-")
                                    (nospace . "-"))
        deft-extension '("md" "org")
        deft-directory "~/OneDrive/notes"))

(provide 'init-org)

;;; init-org.el ends here
