;; -*- lexical-binding: t -*-

(meta-import (private layers markdown packages))

(use-package markdown-mode
  :hook
  (markdown-mode . visual-line-mode)
  :custom
  (initial-major-mode 'markdown-mode))

(meta-export (private layers markdown config))
