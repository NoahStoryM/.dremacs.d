;; -*- lexical-binding: t -*-

(meta-import (private layers git packages))

(use-package magit
  :ensure nil
  :bind
  ("C-x g i" . magit-init)
  ("C-x g c" . magit-clone)
  ("C-x g s" . magit-status))

(meta-export (private layers git keybindings))
