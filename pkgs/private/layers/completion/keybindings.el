;; -*- lexical-binding: t -*-

(meta-import (private layers completion packages))

(use-package corfu
  :bind
  (:map
   corfu-map
   ("C-j" . corfu-previous)
   ("C-l" . corfu-next)
   ("C-k" . keyboard-quit)))

(use-package vertico
  :bind
  (:map
   vertico-map
   ("C-j" . vertico-previous)
   ("C-l" . vertico-next)))

(use-package vertico-directory
  :bind
  (:map
   vertico-map
   ("C-k" . vertico-directory-delete-word)))

(meta-export (private layers completion keybindings))
