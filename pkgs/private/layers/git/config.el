;; -*- lexical-binding: t -*-

(meta-import (private layers dir packages))

(use-package magit
  :custom
  (magit-diff-refine-hunk 'all))

(meta-export (private layers git config))
