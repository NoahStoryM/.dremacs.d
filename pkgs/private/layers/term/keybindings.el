;; -*- lexical-binding: t -*-

(meta-import (private layers term packages))

(use-package capf-autosuggest
  :bind
  (:map capf-autosuggest-active-mode-map
        ("<tab>" . capf-autosuggest-accept)))

(meta-export (private layers term keybindings))
