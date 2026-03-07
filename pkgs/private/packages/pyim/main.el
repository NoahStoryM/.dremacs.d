;; -*- lexical-binding: t -*-

(use-package pyim
  :ensure t
  :defer t
  :custom
  (pyim-page-length 9)
  (pyim-page-style 'vertical)
  :config
  (pyim-default-scheme 'guobiao-shuangpin))

(meta-export (private packages pyim))
