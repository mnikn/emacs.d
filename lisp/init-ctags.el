;;; init-ctags.el --- Ctags config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package counsel-etags
    :ensure t
    :init
    (add-hook 'prog-mode-hook (lambda () (add-hook 'after-save-hook 'counsel-etags-virtual-update-tags 'append 'local)))
    :config
    (setq-default counsel-etags-update-interval 24 * 60 * 60)
    (add-to-list 'counsel-etags-ignore-directories "build")
    (add-to-list 'counsel-etags-ignore-directories "dist")
    (add-to-list 'counsel-etags-ignore-directories "node_modules")
    (add-to-list 'counsel-etags-ignore-directories "bin")
    (add-to-list 'counsel-etags-ignore-filenames "TAGS")
    (add-to-list 'counsel-etags-ignore-filenames "*.json"))

(provide 'init-ctags)

;;; init-ctags.el ends here
