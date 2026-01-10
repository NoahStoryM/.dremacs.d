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
   ("n" . magit-status-jump)
   ("p" . magit-log))
  (:map
   magit-log-mode-map
   ("l" . magit-section-forward)
   ("j" . magit-section-backward)
   ("n" . magit-log-move-to-revision)
   ("p" . magit-log))
  (:map
   magit-stash-mode-map
   ("l" . magit-section-forward)
   ("j" . magit-section-backward)
   ("n" . magit-jump-tp-diffstat-or-iff)
   ("p" . magit-log)))

(meta-export (private layers git keybindings))
