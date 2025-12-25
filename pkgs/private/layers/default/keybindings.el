;; -*- lexical-binding: t -*-

(use-package emacs
  :bind
  (([remap list-buffers] . ibuffer))
  (:map
   minibuffer-mode-map
   ("<tab>" . minibuffer-complete)))

(use-package dired
  :bind
  (:map
   dired-mode-map
   ("j" . dired-previous-line)
   ("l" . dired-next-line)
   ("n" . dired-goto-file)
   ("p" . dired-do-redisplay)))

(use-package ibuffer
  :bind
  (:map
   ibuffer-mode-map
   ("j" . ibuffer-forward-line)
   ("l" . ibuffer-backward-line)
   ("n" . ibuffer-jump-to-buffer)
   ("p" . ibuffer-do-redisplay)))

(use-package mule-cmds
  :bind
  ("C-<tab>" . toggle-input-method))

(meta-export (private layers default keybindings))
