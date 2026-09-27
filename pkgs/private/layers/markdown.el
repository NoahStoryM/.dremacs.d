;; -*- lexical-binding: t -*-

;;; Markdown.

(use-package markdown-mode
  :ensure t
  :custom
  (markdown-fontify-code-blocks-natively t)
  (initial-major-mode 'markdown-mode)
  :hook
  (markdown-mode . visual-line-mode))
