;;; init-yasnippet.el -- Template package
;;; Code:
;;; Commentary:
(require-package 'yasnippet)
(require-package 'yasnippet-snippets)

(yas-global-mode t)
(setq yas-snippet-dirs '("~/.emacs/snippets"))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
