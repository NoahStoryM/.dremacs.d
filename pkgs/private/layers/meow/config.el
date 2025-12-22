;; -*- lexical-binding: t -*-

(meta-import (private layers meow packages))

(use-package meow
  :demand t
  :config
  (meow-global-mode 1))

(meta-export (private layers meow config))
