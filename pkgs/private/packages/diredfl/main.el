;; -*- lexical-binding: t -*-

(use-package diredfl
  :ensure t
  :defer t
  :config
  (set-face-attribute 'diredfl-dir-name nil :bold t))

(meta-export (private packages diredfl))
