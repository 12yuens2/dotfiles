
; Init package
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("popkit" . "http://elpa.popkit.org/packages") ;; For Chinese firewall
			 ("org" . "http://orgmode.org/elpa")))
(package-initialize)


;; Init use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Load org config
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


;;(require 'diminish)
(require 'bind-key)
