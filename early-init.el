;;; early-init.el --- User Bootstrapping File -*- lexical-binding: t -*-

(defvar private--initial-gc-threshold gc-cons-threshold)
(setopt gc-cons-threshold #x8000000)
(setopt inhibit-startup-echo-area-message (user-login-name))
(setopt frame-resize-pixelwise t)
(setopt default-frame-alist
        `((foreground-color . "#002b36")
          (background-color . "#fdf6e3")
          (undecorated . t)
          .
          ,default-frame-alist))
(set-scroll-bar-mode nil)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(pixel-scroll-precision-mode 1)
