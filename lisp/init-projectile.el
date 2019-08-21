;;; init-projectile.el --- Project manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile)
(use-package counsel-projectile
  :config
  (counsel-projectile-mode t))



(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-projectile)
(use-package treemacs-magit)
(use-package treemacs-icons-dired)

(provide 'init-projectile)

;;; init-projectile.el ends here
