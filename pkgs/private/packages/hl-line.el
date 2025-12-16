;; -*- lexical-binding: t -*-

(use-package hl-line
  :hook
  ((prog-mode text-mode) . hl-line-mode))

(meta-export (private packages hl-line))
