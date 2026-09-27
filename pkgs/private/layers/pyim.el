;; -*- lexical-binding: t -*-

;;; Chinese input method.

(use-package pyim
  :ensure t
  :defer t
  :custom
  (default-input-method "pyim")
  (pyim-page-length 9)
  (pyim-page-style 'vertical)
  :config
  (pyim-default-scheme 'guobiao-shuangpin))

(use-package pyim-basedict
  :ensure t
  :after pyim
  :config
  (pyim-basedict-enable))

(use-package posframe                   ; used by pyim for its popup
  :ensure t
  :defer t)
