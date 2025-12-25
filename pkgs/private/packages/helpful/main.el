;; -*- lexical-binding: t -*-

(use-package helpful
  :ensure t
  :bind
  (([remap describe-key]      . helpful-key)
   ([remap describe-mode]     . helpful-mode)
   ([remap describe-symbol]   . helpful-symbol)
   ([remap describe-command]  . helpful-command)
   ([remap describe-function] . helpful-callable)
   ([remap describe-variable] . helpful-variable)))

(meta-export (private packages helpful))
