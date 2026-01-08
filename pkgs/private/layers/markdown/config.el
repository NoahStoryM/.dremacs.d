;; -*- lexical-binding: t -*-

(use-package markdown-mode
  :hook
  (markdown-mode . visual-line-mode)
  :custom
  (initial-major-mode 'markdown-mode))

(meta-export (private layers markdown config))
