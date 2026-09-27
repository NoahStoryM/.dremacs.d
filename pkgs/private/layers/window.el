;; -*- lexical-binding: t -*-

;;; Window selection.  Not imported by default: `M-<tab>' clashes with
;;; the tab-line binding in the `default' layer.

(use-package ace-window
  :ensure t
  :bind
  (("M-<tab>" . ace-window)))
