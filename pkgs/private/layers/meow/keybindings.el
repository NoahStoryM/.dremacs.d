;; -*- lexical-binding: t -*-

(meta-import (private layers meow packages))

(use-package meow
  :init
  (defun meow-setup-default ()
    "Official Meow QWERTY layout."
    (meow-leader-define-key
     ;; Use SPC (0-9) for digit arguments.
     '("0" . meow-digit-argument)
     '("1" . meow-digit-argument)
     '("2" . meow-digit-argument)
     '("3" . meow-digit-argument)
     '("4" . meow-digit-argument)
     '("5" . meow-digit-argument)
     '("6" . meow-digit-argument)
     '("7" . meow-digit-argument)
     '("8" . meow-digit-argument)
     '("9" . meow-digit-argument)
     '("/" . meow-keypad-describe-key)
     '("?" . meow-cheatsheet))
    (meow-motion-overwrite-define-key ; TODO "1.6.0" using `meow-motion-define-key'
     '("h" . meow-left)
     '("j" . meow-next)
     '("k" . meow-prev)
     '("l" . meow-right)
     '("<escape>" . ignore))
    (meow-normal-define-key
     '("0" . meow-expand-0)
     '("1" . meow-expand-1)
     '("2" . meow-expand-2)
     '("3" . meow-expand-3)
     '("4" . meow-expand-4)
     '("5" . meow-expand-5)
     '("6" . meow-expand-6)
     '("7" . meow-expand-7)
     '("8" . meow-expand-8)
     '("9" . meow-expand-9)
     '("-" . negative-argument)
     '(";" . meow-reverse)
     '("," . meow-inner-of-thing)
     '("." . meow-bounds-of-thing)
     '("[" . meow-beginning-of-thing)
     '("]" . meow-end-of-thing)
     '("a" . meow-append)
     '("A" . meow-open-below)
     '("b" . meow-back-word)
     '("B" . meow-back-symbol)
     '("c" . meow-change)
     '("d" . meow-delete)
     '("D" . meow-backward-delete)
     '("e" . meow-next-word)
     '("E" . meow-next-symbol)
     '("f" . meow-find)
     '("g" . meow-cancel-selection)
     '("G" . meow-grab)
     '("h" . meow-left)
     '("H" . meow-left-expand)
     '("i" . meow-insert)
     '("I" . meow-open-above)
     '("j" . meow-next)
     '("J" . meow-next-expand)
     '("k" . meow-prev)
     '("K" . meow-prev-expand)
     '("l" . meow-right)
     '("L" . meow-right-expand)
     '("m" . meow-join)
     '("n" . meow-search)
     '("o" . meow-block)
     '("O" . meow-to-block)
     '("p" . meow-yank)
     '("q" . meow-quit)
     '("Q" . meow-goto-line)
     '("r" . meow-replace)
     '("R" . meow-swap-grab)
     '("s" . meow-kill)
     '("t" . meow-till)
     '("u" . meow-undo)
     '("U" . meow-undo-in-selection)
     '("v" . meow-visit)
     '("w" . meow-mark-word)
     '("W" . meow-mark-symbol)
     '("x" . meow-line)
     '("X" . meow-goto-line)
     '("y" . meow-save)
     '("Y" . meow-sync-grab)
     '("z" . meow-pop-selection)
     '("'" . repeat)
     '("<escape>" . ignore))
    (meow-define-keys
     'insert
     '("C-z" . meow-insert-exit)))

  (defun meow-setup-private ()
    "Private Meow qwerty layout."
    (meow-leader-define-key
     ;; Use SPC (0-9) for digit arguments.
     '("0" . meow-digit-argument)
     '("1" . meow-digit-argument)
     '("2" . meow-digit-argument)
     '("3" . meow-digit-argument)
     '("4" . meow-digit-argument)
     '("5" . meow-digit-argument)
     '("6" . meow-digit-argument)
     '("7" . meow-digit-argument)
     '("8" . meow-digit-argument)
     '("9" . meow-digit-argument)
     '("/" . meow-keypad-describe-key)
     '("?" . meow-cheatsheet))

    (meow-motion-overwrite-define-key ; TODO "1.6.0" using `meow-motion-define-key'
     '("<escape>" . meow-normal-mode))

    (meow-normal-define-key
     ;; --- Numbers & Extended Arguments ---
     '("0" . meow-expand-0)
     '("1" . meow-expand-1)
     '("2" . meow-expand-2)
     '("3" . meow-expand-3)
     '("4" . meow-expand-4)
     '("5" . meow-expand-5)
     '("6" . meow-expand-6)
     '("7" . meow-expand-7)
     '("8" . meow-expand-8)
     '("9" . meow-expand-9)
     '("-" . meow-reverse)

     ;; --- Core Navigation (Inverted-T) ---
     '("i" . meow-prev)
     '("k" . meow-next)
     '("j" . meow-left)
     '("l" . meow-right)
     '("I" . meow-prev-expand)
     '("K" . meow-next-expand)
     '("J" . meow-left-expand)
     '("L" . meow-right-expand)

     ;; --- Thing Selection ---
     '("," . meow-inner-of-thing)
     '("." . meow-bounds-of-thing)

     ;; --- Horizontal & Word Movement ---
     '("h" . meow-back-word)
     '(";" . meow-next-word)
     '("H" . meow-back-symbol)
     '(":" . meow-next-symbol)
     '("<" . meow-beginning-of-thing)
     '(">" . meow-end-of-thing)

     ;; --- Vertical Movement & Jumping ---
     '("u" . pixel-scroll-interpolate-up)
     '("o" . pixel-scroll-interpolate-down)
     '("t" . meow-goto-line)

     ;; --- Selection, Search & Grab ---
     '("q" . meow-quit)
     '("b" . meow-block)
     '("B" . meow-to-block)
     '("n" . meow-line)
     '("N" . meow-join)
     '("/" . meow-search)
     '("'" . meow-visit)
     '("w" . meow-grab)
     '("W" . meow-sync-grab)
     '("R" . meow-swap-grab)
     '("p" . meow-cancel-selection)
     '("y" . meow-pop-selection)
     '("m" . meow-mark-symbol)
     '("M" . meow-mark-word)

     ;; --- Editing Operations (Mainly Left Hand Area) ---
     '("d" . meow-insert)
     '("D" . meow-append)
     '("e" . meow-open-above)
     '("E" . meow-open-below)
     '("r" . meow-replace)
     '("s" . meow-backward-delete)
     '("f" . meow-delete)
     '("a" . meow-backward-kill-word)
     '("g" . meow-kill-word)
     '("A" . meow-backward-kill-symbol)
     '("G" . meow-kill-symbol)

     ;; --- Undo & Clipboard ---
     '("z" . meow-undo)
     '("Z" . undo-redo)
     '("x" . meow-kill)
     '("c" . meow-save)
     '("v" . meow-yank)

     ;; --- System Key Suppression ---
     '("<escape>" . meow-motion-mode)
     '("<backspace>" . ignore)
     '("<delete>" . ignore))

    (meow-define-keys
     'insert
     '("C-SPC" . meow-insert-exit)))

  (defalias 'meow-setup #'meow-setup-private)
  :config
  (meow-setup))

(meta-export (private layers meow keybindings))
