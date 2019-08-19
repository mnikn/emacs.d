;;; init-yasnippet.el -- Template package
;;; Code:
;;; Commentary:

(setq yas-snippet-dirs '("~/.emacs/snippets"))
(use-package yasnippet
  :config
  (add-hook 'prog-mode-hook #'yas-minor-mode))
(use-package yasnippet-snippets)


(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
