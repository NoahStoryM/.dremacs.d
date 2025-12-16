;;; early-init.el --- User Bootstrapping File -*- lexical-binding: t -*-

(defvar private--initial-gc-threshold gc-cons-threshold)
(setopt gc-cons-threshold #x8000000)

(defvar private-cache-directory (expand-file-name ".cache" user-emacs-directory))
(make-directory private-cache-directory t)

(setopt inhibit-startup-echo-area-message (user-login-name))
(setopt frame-resize-pixelwise t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(add-to-list 'default-frame-alist '(undecorated . t))
