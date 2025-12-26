;; -*- lexical-binding: t -*-

(use-package emacs
  :bind
  (([remap list-buffers] . ibuffer)
   ([remap yes-or-no-p] . y-or-n-p))
  (:map
   minibuffer-mode-map
   ("<tab>" . minibuffer-complete)))

(use-package message
  :bind
  (:map
   messages-buffer-mode-map
   ("u" . pixel-scroll-interpolate-up)
   ("o" . pixel-scroll-interpolate-down)
   ("i" . previous-line)
   ("k" . next-line)
   ("j" . left-char)
   ("l" . right-char)))

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

(use-package tab-line
  :bind
  ("M-<tab>" . tab-line-switch-to-next-tab)
  ("M-S-<iso-lefttab>" . tab-line-switch-to-prev-tab))

(use-package tab-bar
  :bind
  ("M-u" . tab-bar-switch-to-prev-tab)
  ("M-o" . tab-bar-switch-to-next-tab)
  ("M-U" . tab-bar-close-tab)
  ("M-O" . tab-bar-new-tab))

(use-package windmove
  :bind
  ("M-i" . windmove-up)
  ("M-k" . windmove-down)
  ("M-j" . windmove-left)
  ("M-l" . windmove-right))

(meta-export (private layers default keybindings))
