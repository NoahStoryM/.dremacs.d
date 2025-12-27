;; -*- lexical-binding: t -*-

(meta-import (private layers benchmark packages))

(use-package benchmark-init
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(meta-export (private layers benchmark config))
