;; -*- lexical-binding: t -*-

(use-package emacs
  :bind
  ;; Make TAB in minibuffer behave like shell completion
  (:map minibuffer-mode-map ("TAB" . minibuffer-complete)))

(meta-export (private layers default keybindings))
