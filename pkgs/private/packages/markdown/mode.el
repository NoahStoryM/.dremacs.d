;; -*- lexical-binding: t -*-

(use-package markdown-mode
  :ensure t
  :defer t
  :custom
  (markdown-fontify-code-blocks-natively t))

(meta-export (private packages markdown mode))
