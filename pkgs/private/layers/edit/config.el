;; -*- lexical-binding: t -*-

(meta-import (private layers edit packages))

(use-package consult
  :custom
  ;; Narrowing lets you restrict results to certain groups of candidates
  (consult-narrow-key "<"))

(use-package embark-consult)
(use-package embark
  :demand t
  :after (avy embark-consult)
  :init
  (defun private-avy-action-embark (pt)
    "Add the option to run `embark' when using `avy'."
    (unwind-protect
        (save-excursion
          (goto-char pt)
          (embark-act))
      (select-window
       (cdr (ring-ref avy-ring 0))))
    t)
  ;; After invoking `avy-goto-char-timer', hit "." to run embark at the next
  ;; candidate you select
  (setf (alist-get ?. avy-dispatch-alist) 'private-avy-action-embark))

(meta-export (private layers edit config))
