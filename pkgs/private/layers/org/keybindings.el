;; -*- lexical-binding: t -*-

(meta-import (private layers org keybindings))

(use-package toc-org
  :bind
  (:map
   org-mode-map
   ("C-c a" . org-agenda)))

(meta-export (private layers org keybindings))
