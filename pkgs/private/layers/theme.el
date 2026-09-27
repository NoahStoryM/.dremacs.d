;; -*- lexical-binding: t -*-

;;; Theme, mode line and delimiters.

(defun private-true-color-p ()
  (or
   (display-graphic-p)
   (= (tty-display-color-cells) #x1000000)))

(defun private-spacemacs-theme-custom-colors (theme)
  (setopt
   spacemacs-theme-custom-colors
   `(
     ;;                                                                  ~~ Dark ~~                              ~~ Light ~~
     ;;                                                                     GUI       TER                           GUI       TER
     ;; generic
     (base          . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#bbc2cf" "#bbc2cf") (if (private-true-color-p) "#002b36" "#000000")))
     (bg1           . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#282a36" "#29282e") (if (private-true-color-p) "#fdf6e3" "#ffffff")))
     (bg2           . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#23212a" "#1c1c1c") (if (private-true-color-p) "#eeede8" "#e4e4e4")))
     (cblk-bg       . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#2f2b33" "#262626") (if (private-true-color-p) "#fff8dc" "#ffffff")))
     (func          . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#bc6ec5" "#d75fd7") (if (private-true-color-p) "#705091" "#8700af")))
     (comment       . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#2ca6b3" "#008787") (if (private-true-color-p) "#deb887" "#008787")))
     (comment-light . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#2ca6b3" "#008787") (if (private-true-color-p) "#a49da5" "#008787")))
     (comment-bg    . ,(if (eq theme 'spacemacs-dark) (if (private-true-color-p) "#262c36" "#262626") (if (private-true-color-p) "#fdf3dc" "#ffffff")))
     )))

(use-package spacemacs-theme
  :ensure t
  :demand t
  :config
  (let ((theme 'spacemacs-light))
    (private-spacemacs-theme-custom-colors theme)
    (load-theme theme t)))

(use-package rainbow-delimiters
  :ensure t
  :hook
  ((prog-mode text-mode) . rainbow-delimiters-mode))

(use-package doom-modeline
  :ensure t
  :hook
  (emacs-startup . doom-modeline-mode)
  :custom
  (line-number-mode t)
  (column-number-mode t))

(use-package project
  :defer t
  :custom
  (project-mode-line t))
