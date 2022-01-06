;;; init-emacs-config.el --- Emacs common config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (use-package recentf
;;     :config
;;     (setq-default
;;         recentf-save-file (expand-file-name "recentf" user-emacs-directory)
;;         recentf-max-menu-items 100)
;;     (recentf-mode t))

;; (use-package exec-path-from-shell
;;     :ensure t
;;     :config
;;     (when (or (memq window-system '(mac ns x))
;;               (unless (memq system-type '(ms-dos windows-nt))
;;                   (daemonp)))
;;         (exec-path-from-shell-initialize))
;;     (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE"))
;;       (add-to-list 'exec-path-from-shell-variables var)))

;; (use-package exec-path-from-shell
;;   :ensure t
;;   :custom
;;   (exec-path-from-shell-check-startup-files nil)
;;   :config
;;   (push "HISTFILE" exec-path-from-shell-variables)
;;   (exec-path-from-shell-initialize))

(use-package pyim
    :ensure t
    :commands (toggle-input-method)
    :config
    (set-default pyim-default-scheme 'pyim-shuangpin))
(use-package pyim-basedict
    :ensure t
    :after (pyim)
    :config
    (pyim-basedict-enable))

(use-package rainbow-delimiters
    :ensure t
    :hook (prog-mode . rainbow-delimiters-mode))

(setq-default auto-save-default nil
    make-backup-files nil
    create-lockfiles nil
    load-prefer-newer t
    ring-bell-function 'ignore
    case-fold-search t
    delete-selection-mode t
    inhibit-startup-screen t
    indent-tabs-mode nil
    mouse-yank-at-point t
    scroll-preserve-screen-position 'always
    set-mark-command-repeat-pop t
    default-input-method "pyim"
    truncate-lines nil
    truncate-partial-width-windows nil
    scroll-margin 3
    scroll-conservatively 10000
    enable-recursive-minibuffers t
    initial-frame-alist '((fullscreen . maximized))

    ;; recentf
    recentf-save-file (expand-file-name "recentf" user-emacs-directory)
    recentf-max-menu-items 100

    ;; dired
    dired-dwim-target t

    )

(use-package restart-emacs
    :ensure t
    :commands (restart-emacs))

(use-package wgrep
    :ensure t)

;; (defadvice switch-to-buffer (before save-buffer-now)
;;     (if (and
;;             (not (buffer-file-name))
;;             (not (equal major-mode 'gnus-group-mode))
;;             (not (equal major-mode 'occur-mode))
;;             (not (equal major-mode 'ivy-occur-mode))
;;             (not (equal major-mode 'shell-mode))
;;             (not (equal major-mode 'term-mode))
;;             (not (equal major-mode 'messages-buffer-mode))
;;             (not (equal major-mode 'gud-mode))
;;             (save-buffer)))
;;     (ad-activate 'switch-to-buffer))

(global-auto-revert-mode t)
(recentf-mode t)
(put 'dired-find-alternate-file 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-emacs-config)

;;; init-emacs-config.el ends here
