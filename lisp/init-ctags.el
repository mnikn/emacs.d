;;; init-ctags.el --- Ctags config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (setq ctags-path "/usr/bin/ctags")
;; (setq ctags-output-path "~/.emacs.d/ctags/")

;; (defun create-ctags (dir tag-name)
;;   "Create ctags in directory."
;;   (interactive "DDirectory: \nsTag name: ")
;;   (shell-command
;;    (format "%s -f %s -e -R %s" ctags-path (concat ctags-output-path tag-name) (directory-file-name dir))))

;; (defun create-js-ctags (dir tag-name)
;;   "Create ctags in directory."
;;   (interactive "DDirectory: \nsTag name: ")
;;   (shell-command
;;    (format "%s -f %s -e languages=javascript,typescript -R %s" ctags-path (concat ctags-output-path tag-name) (directory-file-name dir))))

(use-package counsel-etags
  :init
  (add-hook 'prog-mode-hook (lambda () (add-hook 'after-save-hook 'counsel-etags-virtual-update-tags 'append 'local)))
  :config
  (setq-default counsel-etags-update-interval 60)
  (add-to-list 'counsel-etags-ignore-directories "build")
  (add-to-list 'counsel-etags-ignore-directories "dist")
  (add-to-list 'counsel-etags-ignore-filenames "TAGS")
  (add-to-list 'counsel-etags-ignore-filenames "*.json"))

(provide 'init-ctags)

;;; init-ctags.el ends here
