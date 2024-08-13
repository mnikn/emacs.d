;;; init-godot.el --- summary -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (use-package gdscript-mode :ensure t)

(use-package gdscript-mode
    :straight (gdscript-mode
               :type git
               :host github
               :repo "godotengine/emacs-gdscript-mode")
    :init
    (setq gdscript-use-tab-indents t)
    (setq gdscript-indent-offset 2)
    (setq gdscript-gdformat-save-and-format nil))

(provide 'init-godot)

;;; init-godot.el ends here
