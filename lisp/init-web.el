;;; init-web.el --- Broswer config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq browse-url-browser-function 'eww-browse-url)
(setq eww-search-prefix "https://www.google.com/search?q=")

(use-package sx
    :ensure t
  :config
  (setq-default
    sx-default-site "stackoverflow"
    sx-search-default-order 'relevance
    sx-question-mode-display-buffer-function 'switch-to-buffer))

(provide 'init-web)

;;; init-web.el ends here
