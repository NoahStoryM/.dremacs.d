;; -*- lexical-binding: t -*-

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1)
  :custom
  (line-number-mode t)
  (column-number-mode t))

(meta-export (private packages modeline))
