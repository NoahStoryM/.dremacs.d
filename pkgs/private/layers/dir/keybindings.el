;; -*- lexical-binding: t -*-

(meta-import (private layers dir packages))

(use-package dirvish
  :bind
  (:map
   dirvish-mode-map
   ("M-f" . dirvish-history-go-forward)
   ("M-b" . dirvish-history-go-backward)
   ("M-e" . dirvish-emerge-menu)
   ("<mouse-1>" . dirvish-subtree-toggle-or-open)
   ("<mouse-2>" . dired-mouse-find-file-other-window)
   ("<mouse-3>" . dired-mouse-find-file)))

(meta-export (private layers dir keybindings))
