;;; init-projectile.el --- Project manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile
    :ensure t)
(use-package counsel-projectile
    :ensure t
    :config
    (counsel-projectile-mode t))

(provide 'init-projectile)

;;; init-projectile.el ends here
