;; -*- lexical-binding: t -*-

(defun private-setup-eshell ()
  "Something funny is going on with how Eshell sets up its keymaps; this is
  a work-around to make C-r bound in the keymap."
  (keymap-set eshell-mode-map "C-r" #'consult-history))

(meta-export (private layers term utils))
