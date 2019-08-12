;;; init-langs.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; webmode
(defun my-web-mode-hook ()
  "Custom web-mode hook."
(require-package 'web-mode)
(setq-default web-mode-markup-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)
(setq-default web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; javascript
;(defun my/use-eslint-from-node-modules ()
;	"Use eslint from local."
;  (let* ((root (locate-dominating-file
;                (or (buffer-file-name) default-directory)
;                "node_modules"))
;         (eslint (and root
;                      (expand-file-name "node_modules/eslint/bin/eslint.js"
;                                        root))))
;    (when (and eslint (file-executable-p eslint))
;      (setq-local flycheck-javascript-eslint-executable eslint))))
;(setq-default flycheck-disabled-checkers
;							(append flycheck-disabled-checkers '(javascript-jshint)))
;(flycheck-add-mode 'javascript-eslint 'web-mode)
																				;(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
(require-package 'js2-mode)
(setq-default js2-basic-offset 2)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)


;; typescript
(defun setup-tide-mode ()
  "Typescript mode setup."
  (interactive)
  (tide-setup)
  (flycheck-mode t)
  (setq-default flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode t)
  (company-mode t))

(require-package 'tide)
(setq-default company-tooltip-align-annotations t)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'before-save-hook 'tide-format-before-save)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

(provide 'init-langs)

;;; init-langs.el ends here
