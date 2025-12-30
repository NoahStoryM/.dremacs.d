;; -*- lexical-binding: t -*-

(meta-import (private layers pyim packages))

(use-package pyim
  :defer t
  :custom
  (default-input-method "pyim"))

(use-package pyim-basedict
  :defer t
  :config
  (pyim-basedict-enable))

(meta-export (private layers pyim config))
