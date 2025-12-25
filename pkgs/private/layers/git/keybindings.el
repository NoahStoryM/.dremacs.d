;; -*- lexical-binding: t -*-

(meta-import (private layers git packages))

(use-package magit
  :ensure nil
  :bind
  ("C-x g i" . magit-init)
  ("C-x g c" . magit-clone)
  ("C-x g s" . magit-status)
  (:map
   magit-status-mode-map
   ("j" . magit-section-forward)
   ("l" . magit-section-backward)
   ("n" . magit-status-jump)
   ("p" . magit-log)))

(meta-export (private layers git keybindings))
