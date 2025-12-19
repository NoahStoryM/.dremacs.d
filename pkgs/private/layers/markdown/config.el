;; -*- lexical-binding: t -*-

(use-package markdown-mode
  :hook
  (markdown-mode . visual-line-mode))

(meta-export (private layers markdown config))
