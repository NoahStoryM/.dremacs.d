;; -*- lexical-binding: t -*-

(meta-import (private layers template packages)
             (private layers template utils))

(use-package tempel
  :hook
  ;; Put tempel-expand on the list whenever you start programming or
  ;; writing prose.
  ((text-mode prog-mode) . tempel-setup-capf))

(meta-export (private layers template config))
