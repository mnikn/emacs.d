;;; init-git.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
    :ensure t
    :commands magit)

(use-package evil-magit
    :ensure t
    :after (magit))

(use-package magit-todos
    :ensure t
    :after (magit)
    :config
    (magit-todos-mode))

(provide 'init-git)

;;; init-git.el ends here
