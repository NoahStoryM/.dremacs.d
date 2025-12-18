;; -*- lexical-binding: t -*-

(use-package vertico
  :ensure t
  :defer t
  :custom
  (vertico-cycle t))

(use-package vertico-directory
  :ensure nil
  :after vertico)

(meta-export (private packages vertico))
