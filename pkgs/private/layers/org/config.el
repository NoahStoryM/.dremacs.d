;; -*- lexical-binding: t -*-

(meta-import (private layers org packages))

(use-package toc-org
  :hook
  (org-mode . toc-org-mode))

(meta-export (private layers org config))
