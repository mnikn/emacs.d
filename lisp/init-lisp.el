;;; init-lisp.el --- Lisp config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight parens"
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

(electric-pair-mode t)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#03a1fc")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(add-hook 'prog-mode-hook 'show-paren-mode)

(provide 'init-lisp)

;;; init-lisp.el ends here
