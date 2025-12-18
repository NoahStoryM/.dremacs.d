;; -*- lexical-binding: t -*-

(meta-import (private layers edit packages)
             (private layers edit utils))

(use-package avy
  :demand t
  :bind
  (("C-c j" . avy-goto-line)
   ("s-j"   . avy-goto-char-timer)))

(use-package consult
  :bind
  (
   ;; Drop-in replacements
   ("C-x b" . consult-buffer)     ; orig. switch-to-buffer
   ("M-y"   . consult-yank-pop)   ; orig. yank-pop
   ;; Searching
   ("M-s r" . consult-ripgrep)
   ("M-s l" . consult-line)       ; Alternative: rebind C-s to use
   ("M-s s" . consult-line)       ; consult-line instead of isearch, bind
   ("M-s L" . consult-line-multi) ; isearch to M-s s
   ("M-s o" . consult-outline)
   ;; Isearch integration
   :map isearch-mode-map
   ("M-e" . consult-isearch-history)   ; orig. isearch-edit-string
   ("M-s e" . consult-isearch-history) ; orig. isearch-edit-string
   ("M-s l" . consult-line)            ; needed by consult-line to detect isearch
   ("M-s L" . consult-line-multi)      ; needed by consult-line to detect isearch
   )
  :custom
  ;; Narrowing lets you restrict results to certain groups of candidates
  (consult-narrow-key "<"))

(use-package embark-consult)
(use-package embark
  :demand t
  :after (avy embark-consult)
  :bind
  (("C-c a" . embark-act))              ; bind this to an easy key to hit
  :init
  ;; After invoking `avy-goto-char-timer', hit "." to run embark at the next
  ;; candidate you select
  (setf (alist-get ?. avy-dispatch-alist) 'private-avy-action-embark))

(meta-export (private layers edit config))
