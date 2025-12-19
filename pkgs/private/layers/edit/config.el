;; -*- lexical-binding: t -*-

(meta-import (private layers edit packages)
             (private layers edit utils))

(use-package consult
  :custom
  ;; Narrowing lets you restrict results to certain groups of candidates
  (consult-narrow-key "<"))

(use-package embark-consult)
(use-package embark
  :demand t
  :after (avy embark-consult)
  :init
  ;; After invoking `avy-goto-char-timer', hit "." to run embark at the next
  ;; candidate you select
  (setf (alist-get ?. avy-dispatch-alist) 'private-avy-action-embark))

(meta-export (private layers edit config))
