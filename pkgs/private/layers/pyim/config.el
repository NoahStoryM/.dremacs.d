;; -*- lexical-binding: t -*-

(meta-import (private layers pyim packages))

(use-package pyim
  :custom
  (default-input-method "pyim"))

(use-package pyim-basedict
  :config
  (pyim-basedict-enable))

(meta-export (private layers pyim config))
