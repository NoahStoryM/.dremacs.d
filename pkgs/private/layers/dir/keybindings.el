;; -*- lexical-binding: t -*-

(meta-import (private layers dir packages))

(use-package dirvish
  :bind
  (:map
   dirvish-mode-map
   ("?" . dirvish-dispatch)          ; [?] a helpful cheatsheet
   ("a" . dirvish-setup-menu)        ; [a]ttributes settings:`t' toggles mtime, `f' toggles fullframe, etc.
   ("f" . dirvish-file-info-menu)    ; [f]ile info
   ("o" . dirvish-quick-access)      ; [o]pen `dirvish-quick-access-entries'
   ("s" . dirvish-quicksort)         ; [s]ort flie list
   ("r" . dirvish-history-jump)      ; [r]ecent visited
   (";" . dirvish-ls-switches-menu)
   ("y" . dirvish-vc-menu)
   ("*" . dirvish-mark-menu)
   ("v" . dirvish-yank-menu)
   ("N" . dirvish-narrow)
   ("'" . dirvish-history-last)
   ("i" . dirvish-subtree-toggle)
   ("M-f" . dirvish-history-go-forward)
   ("M-b" . dirvish-history-go-backward)
   ("M-e" . dirvish-emerge-menu)
   ("<mouse-1>" . dirvish-subtree-toggle-or-open)
   ("<mouse-2>" . dired-mouse-find-file-other-window)
   ("<mouse-3>" . dired-mouse-find-file)))

(meta-export (private layers dir keybindings))
