;; -*- lexical-binding: t -*-

(meta-import (private layers term packages))

(use-package eshell
  :bind
  (:map
   eshell-mode-map
   ("C-l" . eshell/clear)
   ("C-p" . eshell-previous-input)
   ("C-n" . eshell-next-input)))

(use-package capf-autosuggest
  :bind
  (:map
   capf-autosuggest-active-mode-map
   ("<tab>" . capf-autosuggest-accept)))

(meta-export (private layers term keybindings))
