;; -*- lexical-binding: t -*-

(meta-import (private layers term packages))

(use-package eshell
  :defer t
  :custom
  (eshell-hist-ignoredups t))

(use-package eshell-syntax-highlighting
  :after eshell
  :hook (eshell-mode . eshell-syntax-highlighting-mode))

(use-package capf-autosuggest
  :after eshell
  :hook (eshell-mode . capf-autosuggest-mode))

(use-package eat
  :after eshell
  :config
  (eat-eshell-mode)                 ; use Eat to handle term codes in program output
  (eat-eshell-visual-command-mode)) ; commands like less will be handled by Eat
