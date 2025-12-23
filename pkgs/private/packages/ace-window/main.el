;; -*- lexical-binding: t -*-

(use-package ace-window
  :ensure t
  :bind
  (("C-SPC" . ace-window))
  :custom
  (aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(meta-export (private packages ace-window))
