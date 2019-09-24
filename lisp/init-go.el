;;; init-go.el --- Go config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/go-build (entry-file-path output-file-path)
  "Go build command"
  (interactive "Finput the entry file path:\nFinput the output file path:")
  (shell-command (format "go build -o %s %s" output-file-path entry-file-path)))

(defun mnikn/go-run (entry-file-path)
  "Go run command"
  (interactive "Finput the entry file path:")
  (shell-command (format "go run %s" entry-file-path)))

(defun mnikn/go-doc ()
  "Go doc by dash"
  (interactive)
  (setq-local helm-dash-docsets '("Go")))

(use-package go-mode
  :mode ("\\.go" . go-mode)
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook 'mnikn/go-doc))

;; (use-package company-go
;;   :config
;;   (add-hook 'go-mode-hook (lambda () (push  'company-go company-backends))))

(use-package go-eldoc
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(provide 'init-go)
;;; init-go.el ends here
