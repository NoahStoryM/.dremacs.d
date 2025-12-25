;; -*- lexical-binding: t -*-

(meta-import (private layers help packages))

(use-package helpful
  :bind
  (:map
   global-map
   ("C-c C-d" . helpful-at-point)
   ("C-h F" . helpful-function)))

(meta-export (private layers help keybindings))
