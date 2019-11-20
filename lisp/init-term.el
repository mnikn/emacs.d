;;; init-term.el --- Term config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'term-mode-hook 'toggle-truncate-lines)

(evil-define-key 'normal term-raw-map "p" 'term-paste)
(evil-define-key 'insert term-raw-map (kbd "C-c C-d") 'term-send-eof)
(evil-define-key 'insert term-raw-map (kbd "C-c C-z") 'term-stop-subjob)
;; (evil-define-key 'insert term-raw-map (kbd "<tab>") 'term-send-tab)

(provide 'init-term)

;;; init-term.el ends here
