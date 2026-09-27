;; -*- lexical-binding: t -*-

;;; Better help buffers.

(use-package helpful
  :ensure t
  :bind
  (([remap describe-key]      . helpful-key)
   ([remap describe-mode]     . helpful-mode)
   ([remap describe-symbol]   . helpful-symbol)
   ([remap describe-command]  . helpful-command)
   ([remap describe-function] . helpful-callable)
   ([remap describe-variable] . helpful-variable)
   ("C-c C-d" . helpful-at-point)
   ("C-h F" . helpful-function)))
