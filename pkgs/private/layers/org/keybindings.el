;; -*- lexical-binding: t -*-

(meta-import (private layers org packages))

(use-package toc-org
  :bind
  (:map
   org-mode-map
   ("C-c a" . org-agenda)))

(meta-export (private layers org keybindings))
