;;; init-yasnippet.el -- Template package
;;; Code:
;;; Commentary:

(use-package yasnippet
    :ensure t
    :config
    ;; (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
    (add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
    (add-hook 'prog-mode-hook #'yas-minor-mode)
    (yas-global-mode t))


(use-package yasnippet-snippets
    :ensure t
    :after (yasnippet))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
