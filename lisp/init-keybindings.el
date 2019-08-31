;;; init-keybindings.el --- Keybindings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; editor
(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c -") 'iedit-mode)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c y") 'company-yasnippet)
(global-set-key (kbd "S-<up>") 'mnikn/evil-move-up)
(global-set-key (kbd "S-<down>") 'mnikn/evil-move-down)

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

(evil-define-key '(normal motion) 'global "K" 'mnikn/evil-move-up)
(evil-define-key '(normal motion) 'global "J" 'mnikn/evil-move-down)
(evil-define-key '(normal motion) 'global "H" 'evil-first-non-blank)
(evil-define-key '(normal motion) 'global "L" 'evil-end-of-line)
(evil-define-key '(normal motion) 'global "=" 'er/expand-region)
(evil-define-key 'normal 'global "s" 'save-buffer)
(evil-define-key 'motion sx-question-list-mode-map  (kbd "<return>") 'sx-display)
(evil-define-key 'motion sx-question-mode-map (kbd "<return>") 'sx-display)
(setq-default evilmi-shortcut "m")

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
    "!" 'ansi-term
    "RET" 'editorconfig-format-buffer
    "a" 'mark-whole-buffer
    "SPC" 'switch-to-buffer
    "sg" 'counsel-projectile-git-grep
    "ss" 'swiper
    "sp" 'swiper-thing-at-point
    ;; "sj" 'counsel-etags-find-tag-at-point
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
    "bs" 'save-buffer
    "be" 'eval-buffer
    "bw" 'kill-buffer-and-window
    "bk" 'kill-buffer
    "ee" 'er/expand-region
    "em" 'iedit-mode
    "cj" 'lsp-find-definition
    "cr" 'lsp-rename
    "cm" 'lsp-ui-imenu
    "<left>" 'windmove-left
    "<right>" 'windmove-right
    "<up>" 'windmove-up
    "<down>" 'windmove-down
    "wv" 'split-and-follow-vertically
    "wh" 'split-and-follow-horizontally
    "wd" 'delete-window
    "g" 'magit
    "m" 'counsel-M-x
    "p" 'projectile-command-map
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
  )


(provide 'init-keybindings)

;;; init-keybindings.el ends here
