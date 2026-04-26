;; -*- lexical-binding: t -*-

(use-package gptel
  :ensure t
  :defer t
  :custom
  (gptel-temperature 0.7)
  (gptel-prompt-prefix-alist
     '((org-mode . "** user\n")
       (markdown-mode . "## user\n")
       (text-mode . "## user\n")))
  (gptel-response-prefix-alist
     '((org-mode . "** assistant\n")
       (markdown-mode . "## assistant\n")
       (text-mode . "## assistant\n")))
  :hook
  (gptel-post-stream . gptel-auto-scroll))

(meta-export (private packages gptel))
