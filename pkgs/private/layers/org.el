;; -*- lexical-binding: t -*-

;;; Org.

(use-package org
  :bind
  ("C-c a" . org-agenda))

(use-package toc-org
  :ensure t
  :hook
  (org-mode . toc-org-mode))
