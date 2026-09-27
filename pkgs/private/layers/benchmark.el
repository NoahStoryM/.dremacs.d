;; -*- lexical-binding: t -*-

;;; Startup benchmarking.  Import this layer first to measure the others.

(use-package benchmark-init
  :ensure t
  :demand t
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))
