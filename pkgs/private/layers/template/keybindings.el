;; -*- lexical-binding: t -*-

(meta-import (private layers template packages))

(use-package tempel
  :bind
  ("C-k" . tempel-insert)
  (:map
   tempel-map
   ("C-k" . tempel-done)
   ("C-l" . tempel-next)
   ("C-j" . tempel-previous)))

(meta-export (private layers template keybindings))
