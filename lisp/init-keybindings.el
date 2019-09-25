;;; init-keybindings.el --- Keybindings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/magit-blame ()
  (interactive)
  (if (bound-and-true-p magit-blame-mode)
    (magit-blame-quit)
    (magit-blame)))

(defun mnikn/evil-toggle-input-method ()
  (interactive)
  (if (not current-input-method)
    (if (not (string= evil-state "insert"))
      (evil-insert-state)))
  (toggle-input-method))

(defun mnikn/evil-quick-mark ()
  (interactive)
  (evil-set-marker 1))

(defun mnikn/evil-goto-mark-line ()
  (interactive)
  (evil-goto-mark-line 1))

;; editor
(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-\\") 'mnikn/evil-toggle-input-method)
(global-set-key (kbd "C-c -") 'iedit-mode)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c y") 'company-yasnippet)
(global-set-key (kbd "S-<up>") 'mnikn/evil-move-up)
(global-set-key (kbd "S-<down>") 'mnikn/evil-move-down)
(define-key awesome-pair-mode-map (kbd "(") 'awesome-pair-open-round)
(define-key awesome-pair-mode-map (kbd "[") 'awesome-pair-open-bracket)
(define-key awesome-pair-mode-map (kbd "{") 'awesome-pair-open-curly)
(define-key awesome-pair-mode-map (kbd "\"") 'awesome-pair-double-quote)

;; emacs
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-<tab>") 'switch-to-buffer)
(global-set-key (kbd "C-c c") 'org-capture)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; windows
(global-set-key (kbd "C-c h") 'split-and-follow-horizontally)
(global-set-key (kbd "C-c v") 'split-and-follow-vertically)
(global-set-key (kbd "C-c d") 'delete-window)
(global-set-key (kbd "C-c C-d") 'kill-buffer-and-window)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(evil-define-key '(normal motion visual) 'global "K" 'mnikn/evil-move-up)
(evil-define-key '(normal motion visual) 'global "J" 'mnikn/evil-move-down)
(evil-define-key '(normal motion visual) 'global "H" 'evil-first-non-blank)
(evil-define-key '(normal motion visual) 'global "L" 'evil-end-of-line)
(evil-define-key '(normal motion visual) 'global "f" 'avy-goto-char-in-line)
(evil-define-key '(normal motion visual) 'global "m" 'evil-jump-item)
(evil-define-key '(normal motion) 'global "=" 'er/expand-region)
(evil-define-key '(normal visual) 'global "\\" 'iedit-mode)
(evil-define-key 'normal 'global "s" 'save-buffer)
(evil-define-key 'normal 'global (kbd "0 o") 'mnikn/evil-newline-below)
(evil-define-key 'normal 'global (kbd "0 O") 'mnikn/evil-newline-above)

(evil-define-key 'motion sx-question-list-mode-map  (kbd "<return>") 'sx-display)
(evil-define-key 'motion sx-question-list-mode-map  "S" 'sx-search)
(evil-define-key 'motion sx-question-mode-map (kbd "<return>") 'sx-display)
;; (setq-default evilmi-shortcut "m")

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
    "," 'ansi-term
    "RET" 'editorconfig-format-buffer
    "a" 'mark-whole-buffer
    "<left>" 'windmove-left
    "<right>" 'windmove-right
    "<up>" 'windmove-up
    "<down>" 'windmove-down
    "SPC" 'switch-to-buffer
    "sg" 'counsel-projectile-git-grep
    "ss" 'swiper
    "sp" 'swiper-thing-at-point
    "sj" 'counsel-etags-find-tag-at-point
    "ff" 'find-file
    "fj" 'ffap
    "fm" 'dired-jump
    "fc" 'mnikn/open-config-file
    "fo" 'mnikn/open-org-dir
    "fr" 'counsel-recentf
    "hf" 'counsel-describe-function
    "hv" 'counsel-describe-variable
    "hk" 'describe-key
    "hm" 'describe-mode
    ;; "bb" 'switch-to-buffer
    "bs" 'save-buffer
    "be" 'eval-buffer
    "bw" 'kill-buffer-and-window
    "bk" 'kill-buffer
    "ee" 'toggle-company-english-helper
    "ek" 'awesome-pair-kill
    "eK" 'awesome-pair-backward-kill
    "cj" 'lsp-find-definition
    "cr" 'lsp-rename
    "cm" 'lsp-ui-imenu
    "jj" 'mnikn/evil-goto-mark-line
    "jm" 'mnikn/evil-quick-mark
    ;; "cm" 'counsel-imenu
    "cc" 'flycheck-mode
    "wv" 'split-and-follow-vertically
    "wh" 'split-and-follow-horizontally
    "wd" 'delete-window
    "gs" 'magit-status
    "gll" 'magit-log-buffer-file
    "glg" 'magit-log-current
    "gb" 'mnikn/magit-blame
    "m" 'counsel-M-x
    "p" 'projectile-command-map
    "ol" 'org-insert-link
    "ot" 'org-todo
    "oc" 'org-capture
    "od" 'org-archive-subtree
    "oa" 'org-agenda
    "op" 'org-set-property
    "oss" 'org-schedule
    "osd" 'org-deadline
    "or" 'org-refile
    "oil" 'org-insert-link
    "oin" 'org-insert-subheading
    "oki" 'org-clock-in
    "oko" 'org-clock-out
    "okg" 'org-clock-goto
    "okc" 'org-clock-cancel
    "oo" 'org-open-at-point
    "ob" 'org-toggle-checkbox
    "oe" 'org-babel-execute-src-block
    "oq" 'org-set-tags)

  (space-leader-def
    :keymaps 'js2-mode-map
    "be" 'nodejs-repl-send-buffer)
  
  (space-leader-def
    :keymaps 'go-mode-map
    "bb" 'mnikn/go-build
    "be" 'mnikn/go-run)
  )


(provide 'init-keybindings)

;;; init-keybindings.el ends here
