;; -*- lexical-binding: t -*-

(meta-import (private layers term packages)
             (private layers term utils))

(use-package eshell
  :hook
  ((eshell-mode . private-setup-eshell)))

(use-package eshell-syntax-highlighting
  :hook (eshell-mode . eshell-syntax-highlighting-global-mode))

(use-package capf-autosuggest
  :hook (eshell-mode . capf-autosuggest-mode))

(use-package eat
  :config
  (eat-eshell-mode)                 ; use Eat to handle term codes in program output
  (eat-eshell-visual-command-mode)) ; commands like less will be handled by Eat

(meta-export (private layers term config))
