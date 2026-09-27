;; -*- lexical-binding: t -*-

;;; Templates.

(defun private-tempel-setup-capf ()
  "Add the tempel expansion function to the
list of completion-at-point-functions (capf)."
  (add-hook 'completion-at-point-functions #'tempel-expand -1 'local))

(use-package tempel
  :ensure t
  :custom
  (tempel-path (expand-file-name "templates" user-dremacs-directory))
  :hook
  ;; Put tempel-expand on the list whenever you start programming or
  ;; writing prose.
  ((text-mode prog-mode) . private-tempel-setup-capf)
  :bind
  ("M-*" . tempel-insert)
  ("M-+" . tempel-complete)
  (:map
   tempel-map
   ("C-k" . tempel-done)
   ("C-l" . tempel-next)
   ("C-j" . tempel-previous)))
