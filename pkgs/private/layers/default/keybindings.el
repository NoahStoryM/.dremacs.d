;; -*- lexical-binding: t -*-

(use-package emacs
  :init
  (keymap-set input-decode-map "C-i" "H-i")
  (keymap-set input-decode-map "C-m" "H-m")
  ;; :config
  ;; (cua-mode)

  :bind
  ;; Make TAB in minibuffer behave like shell completion
  (:map minibuffer-mode-map ("TAB" . minibuffer-complete)))

(meta-export (private layers default keybindings))
