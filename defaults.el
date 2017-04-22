(use-package pallet
  :ensure t
  :config (pallet-mode 1))

(use-package evil
  :ensure t
  :config (evil-mode 1))

(use-package linum
  :ensure t
  :init (setq linum-format "%d ")
  :config (global-linum-mode 1))

(use-package ivy
  :ensure t
  :config (ivy-mode 1))

(show-paren-mode 1)
(setq show-paren-delay 0)
