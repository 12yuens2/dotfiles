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

(use-package multi-term
  :ensure t
  :init (setq multi-term-program "/bin/bash"))

;(use-package evil-magit
;  :ensure t
;  )

(show-paren-mode 1)
(setq show-paren-delay 0)
