;;; init-git.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
    :ensure t
    :commands magit)

(use-package evil-magit
    :ensure t
    :after (magit))


(provide 'init-git)

;;; init-git.el ends here
