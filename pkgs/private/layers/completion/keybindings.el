;; -*- lexical-binding: t -*-

(meta-import (private layers completion packages))

(use-package vertico-directory
  :bind
  (:map vertico-map
        ("M-DEL" . vertico-directory-delete-word)))

(meta-export (private layers completion keybindings))
