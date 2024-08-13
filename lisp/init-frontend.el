;;; init-frontend.el --- Frontend config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun eslint-fix-file ()
  (interactive)
  (message "eslint --fixing the file" (buffer-file-name))
  (shell-command (concat "npx eslint --fix " (buffer-file-name))))

(defun eslint-fix-file-and-revert ()
  (interactive)
  (eslint-fix-file)
  (revert-buffer t t))


(defun stylelint-fix-file ()
  (interactive)
  (message "stylelint --fixing the file" (buffer-file-name))
  (shell-command (concat "npx stylelint --fix " (buffer-file-name))))


(defun stylelint-fix-file-and-revert ()
  (interactive)
  (stylelint-fix-file)
  (revert-buffer t t))


(setq-default web-mode-markup-indent-offset 2)
(defun mnikn/format-js ()
  (interactive)
  ;; (call-process-shell-command (format "eslint --fix %s" buffer-file-name)))
  (async-shell-command (format "eslint --fix %s" buffer-file-name)))

(use-package prettier-js
  :ensure t)

(use-package json-mode
  :ensure t
  :mode ("\\.json" . json-mode))

(use-package scss-mode
  :ensure t
  :mode
  ("\\.scss" . scss-mode))

(use-package web-mode
  :ensure t
  :mode
  ("\\.html". web-mode)
  ("\\.css". web-mode)
  ("\\.tsx". web-mode)
  ("\\.jsx". web-mode)
  ("\\.vue". web-mode)
  :config
  (setq-default web-mode-auto-close-style 2)
  (setq-default web-mode-markup-indent-offset 2))

(use-package typescript-mode
  :ensure t
  :mode
  ("\\.ts$" . typescript-mode))

;; (use-package javascript-mode
;;   :ensure t
;;   :mode
;;   ("\\.js$" . typescript-mode)
;;   ("\\.jsx$" . javascript-mode))

(provide 'init-frontend)

;;; init-frontend.el ends here
