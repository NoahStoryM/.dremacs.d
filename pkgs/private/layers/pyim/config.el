;; -*- lexical-binding: t -*-

(meta-import (private layers pyim packages))

(use-package pyim-basedict
  :commands
  (pyim-convert-string-at-point)
  :custom
  (default-input-method "pyim")
  :config
  (pyim-basedict-enable))

(meta-export (private layers pyim config))
