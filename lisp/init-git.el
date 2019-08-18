;;; init-git.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit)
(use-package evil-magit
  :config
  (evil-define-key* evil-magit-state magit-mode-map "SPC" nil)
  (evil-define-key* evil-magit-state magit-mode-map [escape] nil))

(provide 'init-git)

;;; init-git.el ends here
