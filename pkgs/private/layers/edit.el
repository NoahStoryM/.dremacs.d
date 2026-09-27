;; -*- lexical-binding: t -*-

;;; Navigation, search, actions and structural editing.

(defun private-avy-action-embark (pt)
  "Run `embark-act' at PT, then return to the window `avy' started from."
  (unwind-protect
      (save-excursion
        (goto-char pt)
        (embark-act))
    (select-window
     (cdr (ring-ref avy-ring 0))))
  t)

(use-package avy
  :ensure t
  :bind
  (("C-c j" . avy-goto-line)
   ("s-j"   . avy-goto-char-timer))
  :config
  ;; After invoking `avy-goto-char-timer', hit "." to run embark at the next
  ;; candidate you select
  (setf (alist-get ?. avy-dispatch-alist) #'private-avy-action-embark))

(use-package consult
  :ensure t
  :custom
  ;; Narrowing lets you restrict results to certain groups of candidates
  (consult-narrow-key "<")
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
   ))

(use-package embark
  :ensure t
  :bind
  (("C-." . embark-act)))               ; embark's suggested key; frees C-c a for org-agenda

(use-package embark-consult
  :ensure t
  :after (embark consult))

(use-package wgrep
  :ensure t
  :defer t
  :custom
  (wgrep-auto-save-buffer t))

(use-package smartparens
  :ensure t
  :hook (prog-mode text-mode)
  :config
  (require 'smartparens-config))
