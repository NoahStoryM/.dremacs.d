;; -*- lexical-binding: t -*-

(use-package emacs
  :bind
  (([remap list-buffers] . ibuffer))
  (:map minibuffer-mode-map ("<tab>" . minibuffer-complete)))

(use-package mule-cmds
  :bind
  ("C-<tab>" . toggle-input-method))

(meta-export (private layers default keybindings))
