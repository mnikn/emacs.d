;;; init-frontend.el --- Frontend config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun mnikn/format-js ()
    (interactive)
    ;; (call-process-shell-command (format "eslint --fix %s" buffer-file-name)))
    (async-shell-command (format "eslint --fix %s" buffer-file-name)))

(use-package js2-mode
    :ensure t
    :mode ("\\.js$" . js2-mode)
    )

;; (use-package tide
;; :after (typescript-mode company flycheck)
;; :hook ((typescript-mode . tide-setup)))

;; (add-hook 'js2-mode-hook 'tide-setup)

(use-package json-mode
    :ensure t
    :mode ("\\.json" . json-mode))

(use-package rjsx-mode
    :ensure t
    :mode
    ("\\.jsx" . rjsx-mode))
;; ("\\.tsx" . rjsx-mode)

(use-package scss-mode
    :ensure t
    :mode
    ("\\.scss" . scss-mode))

(use-package web-mode
    :ensure t
    :mode
    ("\\.html". web-mode)
    ("\\.css". web-mode)
    ;; ("\\.jsx". web-mode)
    ("\\.tsx". web-mode)
    ("\\.vue". web-mode)
    :config
    (setq-default web-mode-auto-close-style 2))
;; :config
;; (defun my/tsx-setup ()
;;   (when (and (stringp buffer-file-name)
;;              (string-match "\\.tsx$" buffer-file-name))
;;     (tide-setup)))
;; (defun my/jsx-setup ()
;;   (when (and (stringp buffer-file-name)
;;           (string-match "\\.jsx$" buffer-file-name))
;;     (flycheck-add-mode 'javascript-eslint 'web-mode)
;;     (js2-mode)))
;; (add-hook 'web-mode-hook 'my/tsx-setup)
;; (add-hook 'web-mode-hook 'my/jsx-setup))

(provide 'init-frontend)

;;; init-frontend.el ends here
