;;; init-git.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package magit
    :ensure t
    :commands magit)

;; (load "~/.emacs.d/site-lisp/evil-magit.el")
(require 'evil-magit)

(provide 'init-git)

;;; init-git.el ends here
