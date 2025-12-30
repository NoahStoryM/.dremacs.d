;; -*- lexical-binding: t -*-

(defun true-color-p ()
  (or
   (display-graphic-p)
   (= (tty-display-color-cells) 16777216)))

(defun spacemacs-theme-custom-colors (theme)
  (setopt
   spacemacs-theme-custom-colors
   `(
     ;;                                                                  ~~ Dark ~~                              ~~ Light ~~
     ;;                                                                     GUI       TER                           GUI       TER
     ;; generic
     (base          . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#bbc2cf" "#bbc2cf") (if (true-color-p) "#002b36" "#000000")))
     (bg1           . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#282a36" "#29282e") (if (true-color-p) "#fdf6e3" "#ffffff")))
     (bg2           . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#23212a" "#1c1c1c") (if (true-color-p) "#eeede8" "#e4e4e4")))
     (cblk-bg       . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#2f2b33" "#262626") (if (true-color-p) "#fff8dc" "#ffffff")))
     (func          . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#bc6ec5" "#d75fd7") (if (true-color-p) "#705091" "#8700af")))
     (comment       . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#2ca6b3" "#008787") (if (true-color-p) "#deb887" "#008787")))
     (comment-light . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#2ca6b3" "#008787") (if (true-color-p) "#a49da5" "#008787")))
     (comment-bg    . ,(if (eq theme 'spacemacs-dark) (if (true-color-p) "#262c36" "#262626") (if (true-color-p) "#fdf3dc" "#ffffff")))
     )))

(meta-export (private layers theme utils))
