;; -*- lexical-binding: t -*-

(use-package tempel
  :ensure t
  :defer t
  :custom
  (tempel-path (expand-file-name "templates" user-dremacs-directory)))

(meta-export (private packages tempel))
