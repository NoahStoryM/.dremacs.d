;; -*- lexical-binding: t -*-

(use-package emacs
  :config
  (with-selected-frame (selected-frame)
    (keymap-set input-decode-map "C-i" [C-i])
    (keymap-set input-decode-map "C-m" [C-m])
    (keymap-set input-decode-map "C-[" [C-bracketleft]))
  :bind
  ;; Make TAB in minibuffer behave like shell completion
  (:map minibuffer-mode-map ("TAB" . minibuffer-complete)))

(meta-export (private layers default keybindings))
