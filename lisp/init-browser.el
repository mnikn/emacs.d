;;; init-browser.el --- Broswer config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq browse-url-browser-function 'eww-browse-url)
(setq eww-search-prefix "https://www.google.com/search?q=")

(use-package sx
	:ensure t)

(provide 'init-browser)

;;; init-browser.el ends here
