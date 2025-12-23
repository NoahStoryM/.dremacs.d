;; -*- lexical-binding: t -*-

(meta-import (private layers pyim packages))

(use-package pyim-basedict
  :custom
  (default-input-method "pyim")
  :config
  (pyim-basedict-enable))

(meta-export (private layers pyim config))
