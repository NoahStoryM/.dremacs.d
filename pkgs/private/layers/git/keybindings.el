;; -*- lexical-binding: t -*-

(meta-import (private layers git packages))

(use-package magit
  :bind
  ("C-x g i" . magit-init)
  ("C-x g c" . magit-clone)
  ("C-x g s" . magit-status)
  (:map
   magit-status-mode-map
   ("C-S-<iso-lefttab>" . magit-section-cycle-diffs)
   ("M-<tab>" . nil)
   ("l" . magit-section-forward)
   ("j" . magit-section-backward)
   ("p" . magit-status-jump)
   ("n" . magit-log))
  (:map
   magit-log-mode-map
   ("l" . magit-section-forward)
   ("j" . magit-section-backward)
   ("p" . magit-log-move-to-revision)
   ("n" . magit-log))
  (:map
   magit-stash-mode-map
   ("l" . magit-section-forward)
   ("j" . magit-section-backward)
   ("p" . magit-jump-tp-diffstat-or-iff)
   ("n" . magit-log)))

(meta-export (private layers git keybindings))
