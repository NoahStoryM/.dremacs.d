;; -*- lexical-binding: t -*-

(use-package savehist
  :config
  (savehist-mode)
  :custom
  (savehist-file (file-name-concat private-cache-directory "savehist")))

(meta-export (private packages savehist))
