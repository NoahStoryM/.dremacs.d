;; -*- lexical-binding: t -*-

(use-package meow
  :ensure t
  :defer t
  :custom
  (meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-use-clipboard t))

(meta-export (private packages meow))
