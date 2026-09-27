;; -*- lexical-binding: t -*-

(use-package emacs
  :bind
  ("C-S-d" . backward-delete-char)
  ("M-D" . backward-kill-word)
  ("C-x C-0" . nil)
  ([remap list-buffers] . ibuffer)
  (:map
   minibuffer-mode-map
   ("<tab>" . minibuffer-complete)))

(use-package man
  :bind
  (:map
   Man-mode-map
   ("u" . pixel-scroll-interpolate-up)
   ("o" . pixel-scroll-interpolate-down)
   ("i" . previous-line)
   ("k" . next-line)
   ("j" . left-char)
   ("l" . right-char)))

(use-package emacs                      ; `messages-buffer-mode-map' is in simple.el
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
   ("^" . dired-do-kill-lines)
   ("k" . dired-up-directory)
   ("j" . dired-previous-line)
   ("l" . dired-next-line)
   ("n" . dired-goto-file)
   ("p" . dired-do-redisplay)
   ("<backtab>" . dired-maybe-insert-subdir)))

(use-package ibuffer
  :bind
  (:map
   ibuffer-mode-map
   ("j" . ibuffer-backward-line)
   ("l" . ibuffer-forward-line)
   ("n" . ibuffer-jump-to-buffer)
   ("p" . ibuffer-do-redisplay)))

(use-package info
  :bind
  (:map
   Info-mode-map
   ("o" . Info-scroll-up)
   ("u" . Info-scroll-down)
   ("i" . previous-line)
   ("k" . next-line)
   ("j" . backward-char)
   ("l" . forward-char)
   ("I" . Info-index)
   ("L" . Info-history-back)))

(use-package emacs
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
