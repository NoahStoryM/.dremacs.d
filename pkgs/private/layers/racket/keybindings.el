;; -*- lexical-binding: t -*-

(meta-import (private layers racket packages))

(use-package racket-mode
  :bind
  (:map
   racket-mode-map
   ("C-c C-c" . racket-run)
   ("C-c C-z" . racket-repl)
   ("C-c C-d" . racket-doc)))

(meta-export (private layers racket keybindings))
