;;; init-lisp.el --- Lisp config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(electric-pair-mode t)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#03a1fc")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-lisp)

;;; init-lisp.el ends here
