;; -*- lexical-binding: t -*-

(use-package spacemacs-light-theme
  :demand t
  :config
  (let ((theme 'spacemacs-light))
    (spacemacs-theme-custom-colors theme)
    (load-theme theme t)))

(use-package rainbow-delimiters
  :hook
  ((prog-mode text-mode) . rainbow-delimiters-mode))

(use-package doom-modeline
  :hook
  (emacs-startup . doom-modeline-mode)
  :custom
  (line-number-mode t)
  (column-number-mode t))

(use-package project
  :custom
  (project-mode-line t))

(meta-export (private layers theme config))
