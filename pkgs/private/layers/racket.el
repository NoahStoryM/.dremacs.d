;; -*- lexical-binding: t -*-

;;; Racket.

(use-package racket-mode
  :ensure t
  :hook
  ((racket-mode racket-hash-lang-mode) . racket-xp-mode)
  :bind
  (:map
   racket-mode-map
   ("C-c C-c" . racket-run)
   ("C-c C-z" . racket-repl)
   ("C-c C-d" . racket-doc)))
