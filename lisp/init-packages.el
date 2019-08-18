;;; init-packages.el --- Package config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)

(setq package-archives '(("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ;; ("melpa" . "http://melpa.milkbox.net/packages/")
                         ))

(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given package."
  (cond
   ((package-installed-p package min-version)
    t)
   ((or (assoc package package-archive-contents) no-refresh)
    (package-install package))
   (t
    (package-refresh-contents)
    (require-package package min-version t))))

(package-initialize)

(require-package 'use-package)
(eval-when-compile
	(add-to-list 'load-path (concat user-emacs-directory "elpa"))
  ;(add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))


(provide 'init-packages)

;;; init-packages.el ends here
