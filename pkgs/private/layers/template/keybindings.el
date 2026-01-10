;; -*- lexical-binding: t -*-

(meta-import (private layers template packages))

(use-package tempel
  :bind
  ("M-*" . tempel-insert)
  ("M-+" . tempel-complete)
  (:map
   tempel-map
   ("C-k" . tempel-done)
   ("C-l" . tempel-next)
   ("C-j" . tempel-previous)))

(meta-export (private layers template keybindings))
