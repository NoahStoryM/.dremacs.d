;; -*- lexical-binding: t -*-

(use-package autorevert
  :config
  (global-auto-revert-mode)
  :custom
  (auto-revert-avoid-polling t)
  (auto-revert-interval 5)
  (auto-revert-check-vc-info t))

(meta-export (private packages autorevert))
