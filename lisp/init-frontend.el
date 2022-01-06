;;; init-frontend.el --- Frontend config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun eslint-fix-file ()
  (interactive)
  (message "eslint --fixing the file" (buffer-file-name))
  (shell-command (concat "eslint --fix " (buffer-file-name))))

(defun eslint-fix-file-and-revert ()
  (interactive)
  (eslint-fix-file)
  (revert-buffer t t))

(defun setup-tide-mode ()
  "Setup tide mode for other mode."
  (interactive)
  (message "setup tide mode")
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (add-hook 'after-save-hook #'eslint-fix-file-and-revert)))


(setq-default web-mode-markup-indent-offset 2)
(defun mnikn/format-js ()
  (interactive)
  ;; (call-process-shell-command (format "eslint --fix %s" buffer-file-name)))
  (async-shell-command (format "eslint --fix %s" buffer-file-name)))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
          (typescript-mode . tide-hl-identifier-mode)
          (web-mode . tide-setup)
          (typescript-mode . tide-hl-identifier-mode)
          ))

(use-package prettier-js
  :ensure t)

(use-package js2-mode
  :ensure t
  :mode ("\\.js$" . js2-mode)
  )
(add-hook 'js2-mode-hook #'setup-tide-mode)


;; (use-package tide
;; :after (typescript-mode company flycheck)
;; :hook ((typescript-mode . tide-setup)))

;; (add-hook 'js2-mode-hook 'tide-setup)

(use-package json-mode
  :ensure t
  :mode ("\\.json" . json-mode))

;; (use-package rjsx-mode
;;     :ensure t
;;     :mode
;;     ("\\.jsx" . rjsx-mode))


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

;; (use-package typescript-mode
;;   :ensure t
;;   :mode
;;   ("\\.ts" . typescript-mode))
;; :config
;; (add-hook 'typescript-mode-hook #'lsp)

;; (use-package rjsx-mode
;;   :ensure t
;;   :mode
;;   ("\\.jsx" . rjsx-mode)
;;   ("\\.tsx" . rjsx-mode)
;;   :config
;;   (setq-default rjsx--indent-region-p ))


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
