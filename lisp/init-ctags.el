;;; init-ctags.el --- Ctags config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq ctags-path "/usr/bin/ctags")
(setq ctags-output-path "~/.emacs.d/ctags/")

(defun create-ctags (dir tag-name)
  "Create ctags in directory."
  (interactive "DDirectory: \nsTag name: ")
  (shell-command
	 (format "%s -f %s -e -R %s" ctags-path (concat ctags-output-path tag-name) (directory-file-name dir))))

(provide 'init-ctags)

;;; init-ctags.el ends here
