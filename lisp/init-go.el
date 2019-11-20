;;; init-go.el --- Go config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/go-build (entry-file-path output-file-path)
    "Go build command"
    (interactive "Finput the entry file path:\nFinput the output file path:")
    (async-shell-command (format "go build -o %s %s" output-file-path entry-file-path)))

(defun mnikn/go-run (entry-file-path)
    "Go run command"
    (interactive "Finput the entry file path:")
    (async-shell-command (format "go run %s" entry-file-path)))

(use-package go-mode
    :ensure t
    :mode ("\\.go" . go-mode)
    :hook ((before-save . gofmt-before-save)))

(use-package company-go
    :ensure t)

;; (use-package company-go
;;   :config
;;   (add-hook 'go-mode-hook (lambda () (push  'company-go company-backends))))

(use-package go-eldoc
    :ensure t
    :hook ((go-mode . go-eldoc-setup)))

(use-package go-dlv
    :ensure t)

(provide 'init-go)
;;; init-go.el ends here
