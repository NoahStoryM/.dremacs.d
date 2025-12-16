;; -*- lexical-binding: t -*-

(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  :custom
  (display-line-numbers-type 'visual)
  (display-line-numbers-width nil))

(meta-export (private packages display-line-numbers))
