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

(use-package rust-mode
  :ensure t)

(use-package company
  :ensure t
  :bind (("C-1" . company-mode))
  :config (global-company-mode 1))

;(use-package evil-magit
;  :ensure t
;  )

(show-paren-mode 1)
(setq show-paren-delay 0)
(load-theme 'monokai t)
