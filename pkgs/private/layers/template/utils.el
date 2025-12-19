;; -*- lexical-binding: t -*-

(defun tempel-setup-capf ()
  "Add the tempel expansion function to the
list of completion-at-point-functions (capf)."
  (add-hook 'completion-at-point-functions #'tempel-expand -1 'local))

(meta-export (private layers template utils))
