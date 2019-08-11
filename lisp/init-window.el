;;; init-window.el --- Window config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-`") 'delete-window)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(provide 'init-window)

;;; init-window.el ends here
