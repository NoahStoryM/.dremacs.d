;;; early-init.el --- User Bootstrapping File -*- lexical-binding: t -*-

;; Plain `setq' throughout: `setopt' would pull in all of cus-edit this early.

;; --- GC: relaxed during startup, restored from `emacs-startup-hook' in init.el ---
(setq gc-cons-threshold #x8000000)

;; --- Directories ---
;; Keep runtime state under `.local/'.  Doing this in early-init (rather than
;; init.el) lets the eln-cache and auto-save lists follow; `elpa/' stays at
;; `~/.emacs.d/elpa' because `package-user-dir' is fixed before this runs.
;; DrEmacs captured its own root in `dremacs-directory' beforehand.
(setq user-emacs-directory (file-name-concat user-emacs-directory ".local/"))
(make-directory user-emacs-directory t)
(setq auto-save-list-file-prefix
      (file-name-concat user-emacs-directory "auto-save-list/.saves-"))
(when (and (featurep 'native-compile) (fboundp 'startup-redirect-eln-cache))
  (startup-redirect-eln-cache "eln-cache"))

;; --- Startup message ---
;; `inhibit-startup-echo-area-message' only works when set literally in
;; `user-init-file' (which is DrEmacs' init.el), so silence it directly.
(advice-add 'display-startup-echo-area-message :override #'ignore)

;; --- Frame ---
;; Setting these as frame parameters avoids drawing the bars and then
;; removing them.  The mode calls keep the mode variables consistent.
(setq frame-resize-pixelwise t)
(setq default-frame-alist
      `((menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (vertical-scroll-bars)
        (foreground-color . "#002b36")
        (background-color . "#fdf6e3")
        (undecorated . t)
        ,@default-frame-alist))
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))     ; absent in no-X builds
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
