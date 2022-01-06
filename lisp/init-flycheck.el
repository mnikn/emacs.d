;;; init-flycheck.el --- Flycheck config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (use-package add-node-modules-path
;;   :ensure t
;;   :config
;;   ;; automatically run the function when web-mode starts
;;   (eval-after-load 'web-mode
;;     '(add-hook 'web-mode-hook 'add-node-modules-path))
;;   (eval-after-load 'typescript-mode
;;     '(add-hook 'js2-mode 'add-node-modules-path))
;;   (eval-after-load 'typescript-mode
;;     '(add-hook 'typescript-mode 'add-node-modules-path))
;;   (eval-after-load 'rjsx-mode
;;     '(add-hook 'rjsx-mode 'add-node-modules-path)))

;; (use-package flycheck
;;   :ensure t
;;   :hook ((go-mode . flycheck-mode)
;;           (js2-mode . flycheck-mode)
;;           (typescript-mode . flycheck-mode)
;;           (rjsx-mode . flycheck-mode)
;;           (web-mode . flycheck-mode)
;;           )
;;   :config
;;   (setq-default flycheck-disabled-checkers
;;     (append flycheck-disabled-checkers
;;       '(javascript-jshint)))
;;   (setq-default flycheck-disabled-checkers
;;     (append flycheck-disabled-checkers
;;       '(json-jsonlist)))
;;   (flycheck-add-mode 'javascript-eslint 'web-mode)
;;   (flycheck-add-mode 'javascript-eslint 'typescript-mode)
;;   (flycheck-add-mode 'javascript-eslint 'js2-mode)
;;   (flycheck-add-mode 'javascript-eslint 'rjsx-mode)
;;   (setq-default flycheck-temp-prefix ".flycheck")
;;   ;; (add-hook 'js2-mode-hook
;;   ;;   (defun my-js2-mode-setup ()
;;   ;;     (when (executable-find "eslint")
;;   ;;       (flycheck-select-checker 'javascript-eslint))))
;;   ;; (add-hook 'rjsx-mode-hook
;;   ;;   (defun my-js2-mode-setup ()
;;   ;;     (when (executable-find "eslint")
;;   ;;       (flycheck-select-checker 'javascript-eslint))))
;;   ;; (add-hook 'typescript-mode-hook
;;   ;;   (defun my-js2-mode-setup ()
;;   ;;     (when (executable-find "eslint")
;;   ;;       (flycheck-select-checker 'javascript-eslint))))
;;   )


(use-package exec-path-from-shell
  :ensure t
  :custom
  (exec-path-from-shell-check-startup-files nil)
  :config
  (push "HISTFILE" exec-path-from-shell-variables)
  (exec-path-from-shell-initialize))

;; Make sure the local node_modules/.bin/ can be found (for eslint)
;; https://github.com/codesuki/add-node-modules-path
(use-package add-node-modules-path
  :ensure t
  :config
  ;; automatically run the function when web-mode starts
  (eval-after-load 'web-mode
    '(add-hook 'web-mode-hook 'add-node-modules-path))
  (eval-after-load 'rjsx-mode
    '(add-hook 'rjsx-mode-hook 'add-node-modules-path))
  )

;; https://emacs.stackexchange.com/questions/14898/flycheck-with-eslint-doesnt-use-eslintrc
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(json-jsonlist)))
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(javascript-jshint)))
  (setq flycheck-eslintrc "~/.eslintrc.js")
  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-add-mode 'javascript-eslint 'rjsx-mode))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
