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
(package-refresh-contents) ;; Refresh package contents. TODO: run conditionally


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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-magit evil-numbers protobuf-mode magit markdown-mode markdown-mode+ yaml-mode rust-mode use-package pallet neotree ivy haskell-mode flycheck evil enh-ruby-mode elfeed company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
