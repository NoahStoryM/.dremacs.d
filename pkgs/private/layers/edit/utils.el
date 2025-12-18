;; -*- lexical-binding: t -*-

(defun private-avy-action-embark (pt)
  "Add the option to run `embark' when using `avy'."
  (unwind-protect
      (save-excursion
        (goto-char pt)
        (embark-act))
    (select-window
     (cdr (ring-ref avy-ring 0))))
  t)

(meta-export (private layers edit utils))
