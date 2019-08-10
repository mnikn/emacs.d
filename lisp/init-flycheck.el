(require-package 'flycheck)

(global-flycheck-mode)
(add-to-list 'flycheck-emacs-lisp-load-path (expand-file-name "lisp" user-emacs-directory))

(provide 'init-flycheck)
