;;; init-projectile.el --- Project manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'projectile)

(projectile-mode t)

(require-package 'treemacs)
(require-package 'treemacs-evil)
(require-package 'treemacs-projectile)
(require-package 'treemacs-magit)
(require-package 'treemacs-icons-dired)

(provide 'init-projectile)

;;; init-projectile.el ends here
