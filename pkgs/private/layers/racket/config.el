;; -*- lexical-binding: t -*-

(meta-import (private layers racket packages))

(use-package racket-mode
  :hook
  ((racket-mode racket-hash-lang-mode) . racket-xp-mode))

(meta-export (private layers racket config))
