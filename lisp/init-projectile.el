;;; init-projectile.el --- Project manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile
  :ensure t
  :config (add-to-list 'projectile-globally-ignored-directories "node_modules"))

(use-package counsel-projectile
    :ensure t
    :config
    (counsel-projectile-mode t))

(use-package yaml-mode
  :ensure t
  :mode ("\\.yml$" . yaml-mode))

(provide 'init-projectile)

;;; init-projectile.el ends here
