;;; init-langs.el --- Langs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; javascript
(require-package 'js2-mode)

;; typescript
(defun setup-tide-mode ()
  "Typescript mode setup."
  (interactive)
  (tide-setup)
  (flycheck-mode t)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode t)
  (company-mode t))

(require-package 'tide)
(setq company-tooltip-align-annotations t)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'before-save-hook 'tide-format-before-save)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)
(setq tide-format-options
      '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunction t :placeOpenBraceOnNewLineForControlBlocks t :indentSize 2 :tabSize 2))

(provide 'init-langs)

;;; init-langs.el ends here
