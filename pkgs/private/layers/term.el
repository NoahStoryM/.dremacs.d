;; -*- lexical-binding: t -*-

;;; Eshell and terminal emulation.

(use-package eshell
  :defer t
  :custom
  (eshell-hist-ignoredups t)
  :bind
  (:map
   eshell-mode-map
   ("C-r" . consult-history)
   ("C-l" . eshell/clear)
   ("C-p" . eshell-previous-input)
   ("C-n" . eshell-next-input)))

(use-package eshell-syntax-highlighting
  :ensure t
  :hook (eshell-mode . eshell-syntax-highlighting-mode))

(use-package capf-autosuggest
  :ensure t
  :hook (eshell-mode . capf-autosuggest-mode)
  :bind
  (:map
   capf-autosuggest-active-mode-map
   ("<tab>" . capf-autosuggest-accept)))

;; Not `:after eshell': that would also hold back `eat-term-name' until Eshell
;; loads, so a standalone M-x eat would ignore it.
(use-package eat
  :ensure t
  :custom
  (eat-term-name "xterm")
  :hook
  (eshell-load . eat-eshell-mode)                 ; use Eat to handle term codes in program output
  (eshell-load . eat-eshell-visual-command-mode)) ; commands like less will be handled by Eat
